import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map_test/app/ui/home/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Obx(() {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      controller: controller.controller,
                      focusNode: controller.focusNode,
                      decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: EdgeInsets.only(left: 20),
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
                Obx(() {
                  return Text(
                    controller.counter.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
