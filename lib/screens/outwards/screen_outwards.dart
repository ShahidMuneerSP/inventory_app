import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/outwards/screen_os33.dart';

class ScreenOutwards extends StatelessWidget {
  const ScreenOutwards({Key? key}) : super(key: key);

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
            "OUTWARD",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            OsCardCountWidget(
              size: size,
              rtsCount: '33',
              expectedDate: '22-11-22',
              totalItems: '2',
              totalQty: '2',
              title: 'PEPSI CO PVT LTD',
            ),
            OsCardCountWidget(
              size: size,
              rtsCount: '34',
              expectedDate: '22-11-22',
              totalItems: '2',
              totalQty: '2',
              title: 'PEPSI CO PVT LTD',
            ),
            OsCardCountWidget(
              size: size,
              rtsCount: '35',
              expectedDate: '22-11-22',
              totalItems: '2',
              totalQty: '2',
              title: 'PEPSI CO PVT LTD',
            ),
            OsCardCountWidget(
              size: size,
              rtsCount: '36',
              expectedDate: '22-11-22',
              totalItems: '2',
              totalQty: '2',
              title: 'PEPSI CO PVT LTD',
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}

class OsCardCountWidget extends StatelessWidget {
  const OsCardCountWidget({
    Key? key,
    required this.size,
    required this.rtsCount,
    required this.expectedDate,
    required this.totalItems,
    required this.totalQty,
    required this.title,
  });
  final Size size;
  final String rtsCount;
  final String expectedDate;
  final String title;
  final String totalItems;
  final String totalQty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const ScreenOS33());
      },
      child: Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        height: 115.h,
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
        child: Row(
          children: [
            Container(
              height: 115.h,
              width: 100.w,
              color: const Color.fromARGB(223, 183, 40, 27),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "OS",
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
                    height: 13.h,
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
              height: 115.h,
              width: size.width - 100.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 14.w,
                      ),
                      SvgPicture.asset("assets/person-svgrepo-com 1.svg",
                          color: Color.fromARGB(223, 183, 40, 27)),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[600],
                    indent: 8.w,
                    endIndent: 8.w,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 14.w,
                      ),
                      SvgPicture.asset("assets/Vector.svg",
                          color: const Color.fromARGB(223, 183, 40, 27)),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "TOTAL ITEMS : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
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
                  Divider(
                    thickness: 1,
                    color: Colors.grey[600],
                    indent: 8.w,
                    endIndent: 8.w,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 14.w,
                      ),
                      SvgPicture.asset("assets/addedquantity.svg",
                          color: const Color.fromARGB(223, 183, 40, 27)),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "TOTAL QUANTITY : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
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
                  const Spacer(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
