import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_map_test/app/ui/home/home.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Flutter Google map Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    ),
  );
}
