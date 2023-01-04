import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/inventory_login.png")))),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: TextFormField(
                controller: email,
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(223, 183, 40, 27),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27),
                    ),
                  ),
                  labelText: "Email Address",
                  labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: emailFocusNode.hasFocus
                          ? const Color.fromARGB(223, 183, 40, 27)
                          : Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: TextFormField(
                controller: password,
                focusNode: passwordFocusNode,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(223, 183, 40, 27),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27),
                    ),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: passwordFocusNode.hasFocus
                          ? const Color.fromARGB(223, 183, 40, 27)
                          : Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                height: 50.h,
                width: size.width.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(223, 183, 40, 27),
                    ),
                  ),
                  onPressed: () {
                    Get.to(MainScreen());
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
