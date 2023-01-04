import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/inwards/rts_33.dart';

class ScreenInwards extends StatelessWidget {
  const ScreenInwards({Key? key}) : super(key: key);

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
            "INWARD",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            RtsCardCountWidget(
              size: size,
              rtsCount: '33',
              expectedQty: '300',
              recievedQty: '301',
              expectedDate: '22-11-22',
              totalItems: '3',
              title: 'PEPSI CO PVT LTD',
            ),
            RtsCardCountWidget(
              size: size,
              rtsCount: '34',
              expectedQty: '300',
              recievedQty: '301',
              expectedDate: '22-11-22',
              totalItems: '3',
              title: 'PEPSI CO PVT LTD',
            ),
            RtsCardCountWidget(
              size: size,
              rtsCount: '35',
              expectedQty: '300',
              recievedQty: '301',
              expectedDate: '22-11-22',
              totalItems: '3',
              title: 'PEPSI CO PVT LTD',
            ),
          ],
        ));
  }
}

class RtsCardCountWidget extends StatelessWidget {
  const RtsCardCountWidget({
    Key? key,
    required this.size,
    required this.rtsCount,
    required this.expectedQty,
    required this.recievedQty,
    required this.expectedDate,
    required this.totalItems,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String rtsCount;
  final String expectedQty;
  final String title;
  final String recievedQty;
  final String expectedDate;
  final String totalItems;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const ScreenRTS33());
      },
      child: Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        height: 150.h,
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
            width: 100.w,
            color: const Color.fromARGB(255, 36, 165, 96),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "RTS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 10.w,
                  endIndent: 10.w,
                ),
                Text(rtsCount,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 30.h,
                ),
                Text("EXPECTED DATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 4.h,
                ),
                Text(expectedDate,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 150.h,
              width: size.width.w - 100.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgPicture.asset("assets/person-svgrepo-com 1.svg"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[600],
                    indent: 8.w,
                    endIndent: 8.w,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgPicture.asset("assets/Vector.svg"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        children: [
                          Text(
                            "TOTAL ITEMS: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            totalItems,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[600],
                    indent: 8.w,
                    endIndent: 8.w,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      Text("EXPECTED QTY",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("RECEIVED QTY",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 38.w,
                      ),
                      Text(expectedQty,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500)),
                      const Spacer(),
                      Text(recievedQty,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: 60.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
