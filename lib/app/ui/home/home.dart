import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map_test/app/ui/home/home_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Obx(() => SizedBox.expand(
                child: GoogleMap(
                  onMapCreated: (controllerOnMap) =>
                      controller.mapController = controllerOnMap,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      controller.latitude.value,
                      controller.longitude.value,
                    ),
                    zoom: 16.0,
                  ),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                ),
              )),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: TextField(
                controller: controller.controller,
                focusNode: controller.focusNode,
                decoration: InputDecoration(
                  hintText: "Search",
                  contentPadding: EdgeInsets.only(left: 20),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: controller.isFocused.value
                      ? IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.close),
                          onPressed: () => log("close"),
                        )
                      : SizedBox(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   controller.determinePosition();
      // }),
      // bottomSheet: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height * 0.75,
      //   padding: EdgeInsets.all(16.0),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(16),
      //       topRight: Radius.circular(16),
      //     ),
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.shade600,
      //         spreadRadius: 1,
      //         blurRadius: 15,
      //       ),
      //     ],
      //   ),
      //   child: Text('data'),
      // ),
    );
  }
}
