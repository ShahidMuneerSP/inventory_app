import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/outwards/fanta/os_33_fanta.dart';
import 'package:inventory_app_ui/screens/outwards/pepsi/os_33_pepsi.dart';


class ScreenOS33 extends StatelessWidget {
  const ScreenOS33({Key? key}) : super(key: key);

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
          "OS 33",
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
      //     child: const Os33AppBarWidget(
      //       rtsTitle: 'PEPSI CO PVT LTD',
      //       title: 'OS 33',
      //     )),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(const Os33Pepsi()),
            child: OsItemCardWidget(
              size: size,
              item: 'PEPSI',
              uom: 'CTN',
              qty: '50',
              type: 'CHILLER',
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(const Os33Fanta()),
            child: OsItemCardWidget(
              size: size,
              item: 'FANTA',
              uom: 'CTN',
              qty: '50',
              type: 'CHILLER',
            ),
          ),
        ],
      ),
    );
  }
}

class Os33AppBarWidget extends StatelessWidget {
  const Os33AppBarWidget({
    Key? key,
    required this.title,
    required this.rtsTitle,
  }) : super(key: key);
  final String title;
  final String rtsTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.r,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          rtsTitle,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 18.w,
        )
      ],
    );
  }
}

class OsItemCardWidget extends StatelessWidget {
  const OsItemCardWidget({
    Key? key,
    required this.size,
    required this.item,
    required this.uom,
    required this.type,
    required this.qty,
  }) : super(key: key);

  final Size size;
  final String item;
  final String uom;
  final String type;
  final String qty;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
      height: 140.h,
      width: size.width,
      decoration: BoxDecoration(boxShadow: [
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
      child: Row(
        children: [
          Container(
            height: 140.h,
            width: 6.w,
            color: const Color.fromARGB(223, 183, 40, 27),
          ),
          Container(
            height: 140.h,
            width: 100.w,
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
                  indent: 10.r,
                  endIndent: 10.r,
                ),
                Text(item,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 15.h,
                ),
                Text("UOM",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500)),
                Divider(
                  thickness: 1,
                  color: Colors.grey[600],
                  indent: 10.r,
                  endIndent: 10.r,
                ),
                Text(uom,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          Container(
            height: 130.h,
            width: 1.w,
            color: const Color.fromARGB(223, 183, 40, 27),
          ),
          Expanded(
              child: Container(
            height: 140.h,
            width: size.width - 100.w,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Row(children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    "assets/carbon_type-pattern.svg",
                    color: const Color.fromARGB(223, 183, 40, 27),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "TYPE : ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    type,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[600],
                  indent: 8.w,
                  endIndent: 8.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset(
                      "assets/addedquantity.svg",
                      color: const Color.fromARGB(223, 183, 40, 27),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "QUANTITY : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      qty,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
