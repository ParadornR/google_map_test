import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  var isFocused = false.obs;

  @override
  void onInit() {
    super.onInit();
    focusNode.addListener(_handleFocusChange);
  }

  @override
  void onClose() {
    controller.dispose();
    focusNode.removeListener(_handleFocusChange);
    focusNode.dispose();
    super.onClose();
  }

  void _handleFocusChange() {
    isFocused.value = focusNode.hasFocus; // อัปเดตแบบนี้ถูกต้อง
  }

  var counter = 0.obs;
  void incrementCounter() {
    counter++;
  }
}
