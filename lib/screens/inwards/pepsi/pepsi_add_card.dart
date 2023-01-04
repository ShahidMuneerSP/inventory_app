import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/inwards/pepsi/add_new_bin_pepsi.dart';

import 'package:inventory_app_ui/screens/inwards/rts_33.dart';

class PepsiAddCard extends StatefulWidget {
  const PepsiAddCard({Key? key}) : super(key: key);

  @override
  State<PepsiAddCard> createState() => _PepsiAddCardState();
}

class _PepsiAddCardState extends State<PepsiAddCard> {
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
                      "PEPSI",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 84.w,
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
                        Get.to(AddNewBinPepsi());
                      },
                      child: Text("Add New Bin",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600))),
                ),
              ],
            ),
          ),

          Column(
            children: [
              ItemCardWidget(
                size: size,
                addedQty: '50',
                binvalue: '123456',
                item: 'PEPSI',
                uom: 'CTN',
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 130.w),
                child: Container(
                  height: 40.h,
                  width: 120.w,
                  margin: EdgeInsets.only(top: 140.h),
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
                        Get.back();
                        Get.off(const ScreenRTS33());
                      },
                      child: Row(
                        children: [
                          const Spacer(),
                          Text("Submit",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600)),
                          const Spacer(),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          )
          //  Center(
          //     child: Padding(
          //     padding: EdgeInsets.only(top: 70.h),
          //     child: Text(
          //       "No Items Added",
          //       style: TextStyle(color: Colors.black, fontSize: 18.sp),
          //     ),
          //   )),
        ]));
  }
}

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({
    Key? key,
    required this.size,
    required this.item,
    required this.uom,
    required this.addedQty,
    required this.binvalue,
  }) : super(key: key);

  final Size size;
  final String item;
  final String uom;
  final String addedQty;
  final String binvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
      height: 150.h,
      width: size.width.w,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          spreadRadius: 5.r,
          blurRadius: 15.r,
          color: const Color.fromARGB(255, 229, 225, 225),
          offset: const Offset(
            2.0,
            2.0,
          ),
        )
      ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60.h,
                    width: 100.w,
                    color: Colors.white,
                    child: Column(
                      children: [
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
                        Text(
                          item,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60.h,
                    width: 100.w,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          "UOM",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey[600],
                          indent: 10.w,
                          endIndent: 10.w,
                        ),
                        Text(
                          uom,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(223, 183, 40, 27),
                    ),
                  )
                ]),
          ),
          Divider(
            thickness: 1,
            color: const Color.fromARGB(255, 36, 165, 96),
            indent: 10.w,
            endIndent: 10.w,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset("assets/addedquantity.svg",
                    color: const Color.fromARGB(255, 36, 165, 96)),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Added Quantity : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  addedQty,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 5.h),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset("assets/bin.svg",
                    color: const Color.fromARGB(255, 36, 165, 96)),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Bin : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  binvalue,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
