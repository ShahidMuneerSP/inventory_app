import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/transfer/screen_transfer.dart';
import 'package:inventory_app_ui/screens/transfer/screen_transfer_card.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:intl/intl.dart';
int newcount =0;
class ScreenMoveTo extends StatefulWidget {
  const ScreenMoveTo({Key? key}) : super(key: key);

  @override
  State<ScreenMoveTo> createState() => _ScreenMoveToState();
}

class _ScreenMoveToState extends State<ScreenMoveTo> {
  TextEditingController manufacturingDate = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController warehouse = TextEditingController();
  TextEditingController bin = TextEditingController();
  TextEditingController qtyPerPallet = TextEditingController();
  TextEditingController actualPallet = TextEditingController();
  TextEditingController chargablePallet = TextEditingController();
  TextEditingController batchNo = TextEditingController();
  FocusNode wareHouseFocusNode = FocusNode();
  FocusNode binFocusNode = FocusNode();
  FocusNode qtyPerPalletFocusNode = FocusNode();
  FocusNode actualPalletFocusNode = FocusNode();
  FocusNode chargableFocusNode = FocusNode();
  FocusNode batchNoFocusNode = FocusNode();
  FocusNode manufacturingFocusNode = FocusNode();
  FocusNode expiryFocusNode = FocusNode();
  @override
  void initState() {
    manufacturingDate.text = "";
    expiryDate.text = "";
    super.initState();
  }

  Future _qrScanner() async {
    var camaraStatus = await Permission.camera.status;
    if (camaraStatus.isGranted) {
      String? qrdata = await scanner.scan();
      print(qrdata);
    } else {
      var isGrant = await Permission.camera.request();
      if (isGrant.isGranted) {
        String? qrdata = await scanner.scan();
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
          "Move To",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
            child: TextFormField(
              controller: warehouse,
              focusNode: wareHouseFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.home_work_sharp,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'WAREHOUSE',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: wareHouseFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 230.w,
                  child: TextFormField(
                    controller: bin,
                    focusNode: binFocusNode,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(
                          width: 1.w,
                          color: const Color.fromARGB(255, 19, 91, 151),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.restore_from_trash_rounded,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          width: 1.w,
                          color: const Color.fromARGB(255, 19, 91, 151),
                        ),
                      ),
                      labelText: 'Bin(Pallet)',
                      labelStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: binFocusNode.hasFocus
                              ? const Color.fromARGB(255, 19, 91, 151)
                              : Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 60.w,
                  height: 55.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(255, 19, 91, 151),
                            width: 1.w)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ))),
                    onPressed: () {
                      setState(() {
                        _qrScanner();
                      });
                    },
                    child: Row(
                      children: [
                        const Spacer(),
                        Icon(
                          Icons.qr_code,
                          color: Colors.black,
                          size: 30.r,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: qtyPerPallet,
              focusNode: qtyPerPalletFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.production_quantity_limits_outlined,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Quantity Per Pallet',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: qtyPerPalletFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: actualPallet,
              focusNode: actualPalletFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 19, 91, 151),
                    )),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.assignment_outlined,
                    color: Colors.grey,
                  ), // icon is 48px widget.
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Actual Pallet',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: actualPalletFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: chargablePallet,
              focusNode: chargableFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.battery_charging_full,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Chargable Pallet',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: chargableFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: batchNo,
              focusNode: batchNoFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.batch_prediction,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Batch No',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: batchNoFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: manufacturingDate,
              focusNode: manufacturingFocusNode,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));
                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);

                  setState(() {
                    manufacturingDate.text = formattedDate;
                  });
                } else {
                  print("Date is not selected");
                }
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Manufacturing Date',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: manufacturingFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: expiryDate,
              focusNode: expiryFocusNode,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));
                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);

                  setState(() {
                    expiryDate.text = formattedDate;
                  });
                } else {
                  print("Date is not selected");
                }
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Expiry Date',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: expiryFocusNode.hasFocus
                        ? const Color.fromARGB(255, 19, 91, 151)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 130.w, vertical: 20.h),
            child: SizedBox(
              height: 40.h,
              width: 70.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 19, 91, 151),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ))),
                  onPressed: () {
                    setState(() {
                      newcount =1;
                    });
                    Get.back();
                    Get.off(const ScreenTransfer());
                  },
                  child: Row(
                    children: [
                      const Spacer(),
                      Text("Transfer",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.bold)),
                      const Spacer(),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
    );
  }
}
