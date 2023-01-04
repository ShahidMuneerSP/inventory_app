import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/inwards/fanta/add_new_bin_fanta.dart';

import 'package:inventory_app_ui/screens/inwards/pepsi/add_new_bin_pepsi.dart';
import 'package:inventory_app_ui/screens/inwards/rts_33.dart';

class RTS33Fanta extends StatefulWidget {
  const RTS33Fanta({Key? key}) : super(key: key);

  @override
  State<RTS33Fanta> createState() => _RTS33FantaState();
}

class _RTS33FantaState extends State<RTS33Fanta> {
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
            "RTS 33",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 15.h, right: 18.w),
              child: Text(
                "PEPSI CO PVT LTD",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        // appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(50.h),
        //     child: const Rts33_appbar_widget(
        //       title: ' RTS 33',
        //       rtsTitle: 'PEPSI CO PVT LTD',
        //     )),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            height: 110.h,
            width: size.width.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: const Color.fromARGB(255, 36, 165, 96), width: 1.w)),
            child: Padding(
              padding: EdgeInsets.all(15.0.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ITEM ",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 88.w,
                      ),
                      Text(
                        "Product Type",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(children: [
                    Text(
                      "FANTA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 77.w,
                    ),
                    Text(
                      "Chiller",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "UOM: ",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "CTN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 41.w,
                      ),
                      Text(
                        "Quantity: ",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "300",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w, top: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40.h,
                  width: 120.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 36, 165, 96),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ))),
                      onPressed: () {
                        Get.to( AddNewBinFanta());
                      },
                      child: Text("Add New Bin",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600))),
                ),
              ],
            ),
          ),
        
          
               Center(
                  child: Padding(
                  padding: EdgeInsets.only(top: 70.h),
                  child: Text(
                    "No Items Added",
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
                  ),
                )),
        ]));
  }
}


