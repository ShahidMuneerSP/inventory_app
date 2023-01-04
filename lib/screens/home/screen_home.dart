import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../inwards/screen_inwards.dart';
import '../outwards/screen_outwards.dart';
import '../transfer/screen_transfer.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                height: 300.w,
                width: 290,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/checking.png")))),
          ),
          SizedBox(
            height: 10.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InwardCardWidget(),
              SizedBox(
                width: 30.w,
              ),
              const OutwardCardWidget()
            ],
          ),
          SizedBox(
            height: 30.w,
          ),
          const TransferCardWidget()
        ],
      ),
    );
  }
}

class TransferCardWidget extends StatelessWidget {
  const TransferCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 320.w,
            height: 55.w,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 91, 151),
                borderRadius: BorderRadius.circular(10.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/transfer_icon.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Get.to(const ScreenTransfer());
      },
    );
  }
}

class OutwardCardWidget extends StatelessWidget {
  const OutwardCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 145.w,
        height: 148.w,
        decoration: BoxDecoration(
            color: const Color.fromARGB(223, 183, 40, 27),
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/outward_icon.svg"),
            SizedBox(
              height: 10.w,
            ),
            Text(
              "OUTWARDS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Get.to(const ScreenOutwards());
      },
    );
  }
}

class InwardCardWidget extends StatelessWidget {
  const InwardCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 145.w,
        height: 148.w,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 36, 165, 96),
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/inward_icon.svg"),
            SizedBox(
              height: 10.w,
            ),
            Text(
              "INWARDS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Get.to(const ScreenInwards());
      },
    );
  }
}
