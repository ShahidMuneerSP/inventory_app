import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/outwards/fanta/new_delivery_notes_fanta.dart';

import 'package:inventory_app_ui/screens/outwards/screen_os33.dart';

class Os33Fanta extends StatelessWidget {
  const Os33Fanta({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
  
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(
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
        body: ListView(children: [
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            height: 110.h,
            width: size.width.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: const Color.fromARGB(223, 183, 40, 27),
                    width: 1.w)),
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
          const NewDeliveryNotesButtonWidget(),
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

class NewDeliveryNotesButtonWidget extends StatefulWidget {
  const NewDeliveryNotesButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NewDeliveryNotesButtonWidget> createState() =>
      _NewDeliveryNotesButtonWidgetState();
}

class _NewDeliveryNotesButtonWidgetState
    extends State<NewDeliveryNotesButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 40.h,
            width: 144.w,
            child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(223, 183, 40, 27),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ))),
                onPressed: () {
                  Get.to(const NewDeliveryNotesFanta());
                },
                child: Row(
                  children: [
                    Spacer(),
                    Text("New Delivery Notes",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w600)),
                    Spacer(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
