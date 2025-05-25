import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map_test/app/ui/home/home_controller.dart';
import 'package:google_map_test/app/widget/button_custom.dart';
import 'package:google_map_test/app/widget/image_cuntom.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final controller = Get.put(HomeController());

  List image = [
    {
      'name': 'SOI Bangkok Restaurants',
      'score': '4.7',
      'vote': '42',
      'type': 'Bar',
      'status': 'Closed',
      'time': 'Open 8 PM',
      'distance': '10',
      'image': [
        'https://plus.unsplash.com/premium_photo-1661953124283-76d0a8436b87?q=80&w=2088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1556745750-68295fefafc5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://plus.unsplash.com/premium_photo-1661883237884-263e8de8869b?q=80&w=2089&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ],
    },
    {
      'name': 'TOOKPAK (Stadium One)',
      'score': '4.8',
      'vote': '2,198',
      'type': 'Thai restaurant',
      'status': 'Open',
      'time': 'Closes 10 PM',
      'distance': '0.5',
      'image': [
        'https://plus.unsplash.com/premium_photo-1661953124283-76d0a8436b87?q=80&w=2088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1556745750-68295fefafc5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ],
    },
    {
      'name': 'House of Food บรรทัดทอง',
      'score': '4.9',
      'vote': '497',
      'type': 'Restaurant',
      'status': 'Closed',
      'time': 'Closes 11 PM',
      'distance': '0.5',
      'image': [
        'https://plus.unsplash.com/premium_photo-1661953124283-76d0a8436b87?q=80&w=2088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1556745750-68295fefafc5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ],
    },
    {
      'name': 'House of Food บรรทัดทอง',
      'score': '4.9',
      'vote': '497',
      'type': 'Restaurant',
      'status': 'Closed',
      'time': 'Closes 11 PM',
      'distance': '0.5',
      'image': [
        'https://plus.unsplash.com/premium_photo-1661953124283-76d0a8436b87?q=80&w=2088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1556745750-68295fefafc5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Obx(
            () => SizedBox.expand(
              child: GoogleMap(
                onTap: (argument) {
                  FocusScope.of(context).unfocus();
                  controller.showBottomSheet.value = false;
                },
                onMapCreated:
                    (controllerOnMap) =>
                        controller.onMapCreated(controllerOnMap),
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    controller.latitude.value,
                    controller.longitude.value,
                  ),
                  zoom: 16.0,
                ),
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
              ),
            ),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(50), // สีเงา
                      spreadRadius: 10, // ระยะการกระจายเงา
                      blurRadius: 10, // ความนุ่มนวลของเงา
                      offset: Offset(0, 0), // การเลื่อนเงา (x,y)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8), // มุมโค้งของกล่อง
                ),
                child: TextField(
                  controller: controller.controller,
                  focusNode: controller.focusNode,
                  onTap: () {
                    controller.showBottomSheet.value = false;
                  },
                  onSubmitted: (value) {
                    controller.showBottomSheet.value = true;
                    controller.bottomSheetHeight.value =
                        MediaQuery.of(context).size.height * 0.70;
                    log(controller.showBottomSheet.value.toString());
                  },
                  decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.only(left: 20),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon:
                        controller.isFocused.value
                            ? IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.close),
                              onPressed: () => controller.controller.clear(),
                            )
                            : SizedBox(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
      bottomSheet: BottomSheet(
        builder: (BuildContext builder) {
          return Obx(
            () => GestureDetector(
              onVerticalDragUpdate: (details) {
                controller.bottomSheetHeight.value -= details.delta.dy;
                final minHeight = MediaQuery.of(context).size.height * 0.120;
                final maxHeight = MediaQuery.of(context).size.height * 0.8;
                controller.bottomSheetHeight.value = controller
                    .bottomSheetHeight
                    .value
                    .clamp(minHeight, maxHeight);
              },
              onVerticalDragEnd: (details) {
                final minHeight = MediaQuery.of(context).size.height * 0.120;
                final maxHeight = MediaQuery.of(context).size.height * 0.8;
                final midHeight = (minHeight + maxHeight) / 2;
                final current = controller.bottomSheetHeight.value;
                if (current < midHeight) {
                  controller.bottomSheetHeight.value = minHeight;
                } else {
                  controller.bottomSheetHeight.value = maxHeight;
                }
              },
              child: AnimatedContainer(
                height:
                    controller.showBottomSheet.value
                        ? controller.bottomSheetHeight.value
                        // ? MediaQuery.of(context).size.height * 0.70
                        : 0.0,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15,
                    ),
                  ],
                ),
                curve: Curves.easeOutQuart,
                duration: Duration(milliseconds: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 2.3,
                            ),
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Restaurants',
                                  style: TextStyle(fontSize: 20),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade200,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.close),
                                    onPressed:
                                        () => controller.controller.clear(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        child: Row(
                                          spacing: 8.0,
                                          children: [
                                            IconButton(
                                              padding: EdgeInsets.zero,
                                              icon: Icon(Icons.tune),
                                              onPressed:
                                                  () =>
                                                      controller.controller
                                                          .clear(),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Relevance',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Icon(Icons.arrow_drop_down),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                'Open now',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                'Top rated',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                'dummy',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Sponsored',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              Icon(Icons.more_vert),
                                            ],
                                          ),
                                          Text(
                                            'Roots Thonglor 10',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '4.7',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(width: 4),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 18,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                '(42) · Bar',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Closed',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text(
                                                ' · Open 8 PM · 10.0 km',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(16),
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey.shade300,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Roots Instagram photos and videos',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'From glam to groove, Roots Thonglor เติมจังหวะให้ค่ำคืนของคุณ',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 4),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 12,
                                                            vertical: 4,
                                                          ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              32,
                                                            ),
                                                        color:
                                                            Colors
                                                                .blue
                                                                .shade100,
                                                      ),
                                                      child: Text(
                                                        'Visit Site',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          spacing: 8.0,
                                          children: [
                                            ButtonCustom(
                                              icon: Icons.directions,
                                              text: 'Relevance',
                                              size: 18,
                                            ),
                                            ButtonCustom(
                                              icon: Icons.call,
                                              text: 'Call',
                                              size: 18,
                                            ),
                                            ButtonCustom(
                                              icon: Icons.public,
                                              text: 'Website',
                                              size: 18,
                                            ),
                                            ButtonCustom(
                                              icon: Icons.bookmark,
                                              text: 'Save',
                                              size: 18,
                                            ),
                                            ButtonCustom(
                                              icon: Icons.menu,
                                              text: 'Dummy',
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: image.length,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 8);
                            },
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            image[index]['name'],
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                image[index]['score'],
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(width: 4),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 16,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                '(${image[index]['vote']}) ·',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(width: 4),
                                              Icon(
                                                Icons.accessible_forward,
                                                color: Colors.blue,
                                                size: 18,
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                '· ${image[index]['type']}',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '${image[index]['status']}',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color:
                                                      image[index]['status'] ==
                                                              'Closed'
                                                          ? Colors.red
                                                          : Colors.green,
                                                ),
                                              ),
                                              Text(
                                                ' · ${image[index]['time']} · ${image[index]['distance']} km',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Row(
                                        spacing: 8.0,
                                        children: List.generate(
                                          image[index]['image'].length,
                                          (imageIndex) {
                                            return imageIndex ==
                                                    image[index]['image']
                                                            .length -
                                                        1
                                                ? ImageCuntomLast(
                                                  url:
                                                      image[index]['image'][imageIndex],
                                                )
                                                : ImageCuntom(
                                                  url:
                                                      image[index]['image'][imageIndex],
                                                );
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        spacing: 8.0,
                                        children: [
                                          ButtonCustom(
                                            icon: Icons.directions,
                                            text: 'Relevance',
                                            size: 18,
                                          ),
                                          ButtonCustom(
                                            icon: Icons.event,
                                            text: 'Booking',
                                            size: 18,
                                          ),
                                          ButtonCustom(
                                            icon: Icons.call,
                                            text: 'Call',
                                            size: 18,
                                          ),
                                          ButtonCustom(
                                            icon: Icons.public,
                                            text: 'Website',
                                            size: 18,
                                          ),
                                          ButtonCustom(
                                            icon: Icons.bookmark,
                                            text: 'Save',
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        onClosing: () => log('Closing'),
      ),
    );
  }
}
