import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/inwards/fanta/rts_33_fanta.dart';
import 'package:inventory_app_ui/screens/inwards/pepsi/rts_33_pepsi.dart';

class ScreenRTS33 extends StatelessWidget {
  const ScreenRTS33({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(const RTS33Pepsi()),
            child: RtsItemCardWidget(
              size: size,
              item: 'PEPSI',
              uom: 'CTN',
              expectedQty: '300',
              recievedQty: '301',
              actualPallet: '12',
              qtyPerPallet: '15',
            ),
          ),
          GestureDetector(
             onTap: () => Get.to(const RTS33Fanta()),
            child: RtsItemCardWidget(
              size: size,
              item: 'FANTA',
              uom: 'CTN',
              expectedQty: '300',
              recievedQty: '301',
              actualPallet: '12',
              qtyPerPallet: '15',
            ),
          ),
        ],
      ),
    );
  }
}

class Rts33_appbar_widget extends StatelessWidget {
  const Rts33_appbar_widget({
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

class RtsItemCardWidget extends StatelessWidget {
  const RtsItemCardWidget({
    Key? key,
    required this.size,
    required this.item,
    required this.uom,
    required this.expectedQty,
    required this.recievedQty,
    required this.qtyPerPallet,
    required this.actualPallet,
  }) : super(key: key);

  final Size size;
  final String item;
  final String uom;
  final String expectedQty;
  final String recievedQty;
  final String qtyPerPallet;
  final String actualPallet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
      height: 145.h,
      width: size.width.w,
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
      child: Row(children: [
        Container(
          height: 150.h,
          width: 6.w,
          color: const Color.fromARGB(255, 36, 165, 96),
        ),
        Container(
          height: 145.h,
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
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[600],
                indent: 10.w,
                endIndent: 10.w,
              ),
              Text(item,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 20.h,
              ),
              Text("UOM",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600)),
              Divider(
                thickness: 1,
                color: Colors.grey[600],
                indent: 10.w,
                endIndent: 10.w,
              ),
              Text(uom,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        Container(
          height: 135.h,
          width: 1.w,
          color: const Color.fromARGB(255, 36, 165, 96),
        ),
        Expanded(
          child: Container(
            height: 155.h,
            width: size.width - 100.w,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12.w,
                    ),
                    SvgPicture.asset("assets/carbon_type-pattern.svg"),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      "TYPE: CHILLER",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[600],
                  indent: 10.w,
                  endIndent: 10.w,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("EXPECTED QTY",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("RECIEVED QTY",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(expectedQty,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 77.w,
                    ),
                    Text(recievedQty,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 40.w,
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[600],
                  indent: 10.w,
                  endIndent: 10.w,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("QTY/PALLET",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 26.w,
                    ),
                    Text("ACTUAL PALLET",
                        style: TextStyle(color: Colors.black, fontSize: 12.sp)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(qtyPerPallet,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 86.w,
                    ),
                    Text(actualPallet,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 53.w,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
