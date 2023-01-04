import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/home/screen_home.dart';
import 'package:inventory_app_ui/screens/transfer/screen_scanned_transfer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import '../main_screen.dart';

class ScreenTransferCard extends StatefulWidget {
  const ScreenTransferCard({Key? key}) : super(key: key);

  @override
  State<ScreenTransferCard> createState() => _ScreenTransferCardState();
}

class _ScreenTransferCardState extends State<ScreenTransferCard> {
  Future _qrScanner() async {
    var camaraStatus = await Permission.camera.status;
    if (camaraStatus.isGranted) {
      String? qrdata = await scanner.scan();
      Get.to(const ScreenScannedTransfer());
      print(qrdata);
    } else {
      var isGrant = await Permission.camera.request();
      if (isGrant.isGranted) {
        String? qrdata = await scanner.scan();
        Get.to(const ScreenScannedTransfer());
        print(qrdata);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.r,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "TRANSFER",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w),
            child: ElevatedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: const Color.fromARGB(255, 19, 91, 151),
                        width: 1.w)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ))),
                onPressed: _qrScanner,
                child: Image.asset(
                  "assets/Qr code2.png",
                  width: 30.w,
                  height: 40.h,
                )),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
            height: 120.h,
            width: size.width.w,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                spreadRadius: 5.r,
                blurRadius: 15.r,
                color: const Color.fromARGB(255, 235, 230, 230),
                offset: const Offset(
                  2.0,
                  2.0,
                ),
              )
            ]),
            child: Row(children: [
              Container(
                height: 120.h,
                width: 6.w,
                color: const Color.fromARGB(255, 19, 91, 151),
              ),
              Container(
                height: 120.h,
                width: 145.w,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.h,
                          width: 70.w,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "ITEM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[600],
                                indent: 10.w,
                                endIndent: 10.w,
                              ),
                              Text("PEPSI",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Container(
                          height: 70.h,
                          width: 70.w,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "UOM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[600],
                                indent: 10.w,
                                endIndent: 10.w,
                              ),
                              Text("CTN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        children: [
                          Text("Bin No :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500)),
                          Text("12345",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100.h,
                width: 1.w,
                color: const Color.fromARGB(255, 19, 91, 151),
              ),
              Container(
                height: 130.h,
                width: 145.w,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.h,
                          width: 70.w,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "ITEM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[600],
                                indent: 10.w,
                                endIndent: 10.w,
                              ),
                              Text("PEPSI",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Container(
                          height: 70.h,
                          width: 70.w,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "UOM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey[600],
                                indent: 10.w,
                                endIndent: 10.w,
                              ),
                              Text("CTN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        children: [
                          Text("Bin No :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500)),
                          Text("57890",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 90.h),
                child: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(223, 183, 40, 27),
                ),
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 130.w),
            child: Container(
              height: 40.h,
              width: 120.w,
              margin: EdgeInsets.only(top: 150.h),
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                         const Color.fromARGB(255, 19, 91, 151),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ))),
                  onPressed: () {
                    Get.off(MainScreen());
                  },
                  child: Row(
                    children: [
                      const Spacer(),
                      Text("Submit",
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w600)),
                      const Spacer(),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
