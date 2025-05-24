import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends GetxController {
  final TextEditingController controller = TextEditingController();
  late GoogleMapController mapController;
  final FocusNode focusNode = FocusNode();
  var isFocused = false.obs;
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    determinePosition();
    focusNode.addListener(handleFocusChange);
  }

  @override
  void onClose() {
    controller.dispose();
    focusNode.removeListener(handleFocusChange);
    focusNode.dispose();
    super.onClose();
  }

  // ใช้แสดง suffixIcon ใน TextField
  void handleFocusChange() {
    isFocused.value = focusNode.hasFocus;
  }

  // ดึงข้อมูล Location
  Future<void> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    //เปิด Location หรือยัง
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    // ตรวจสอบสิทธิ์
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
    );

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );

    latitude.value = position.latitude;
    longitude.value = position.longitude;
    log("${latitude.value}, ${longitude.value}");

    moveCamera();
  }

  void moveCamera() {
    if (mapController != null) {
      final pos = LatLng(latitude.value, longitude.value);
      mapController.animateCamera(CameraUpdate.newLatLng(pos));
    }
  }
}
