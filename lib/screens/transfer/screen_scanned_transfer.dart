import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/transfer/screen_moveto.dart';
import 'package:intl/intl.dart';

class ScreenScannedTransfer extends StatefulWidget {
  const ScreenScannedTransfer({Key? key}) : super(key: key);

  @override
  State<ScreenScannedTransfer> createState() => _ScreenScannedTransferState();
}

class _ScreenScannedTransferState extends State<ScreenScannedTransfer> {
  TextEditingController manufacturingDate = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController warehouse = TextEditingController();
  TextEditingController bin = TextEditingController();
  TextEditingController qty = TextEditingController();
  TextEditingController actualPallet = TextEditingController();
  TextEditingController chargeablePallet = TextEditingController();
  TextEditingController batchNo = TextEditingController();
  FocusNode wareHouseFocusNode = FocusNode();
  FocusNode binFocusNode = FocusNode();
  FocusNode qtyFocusNode = FocusNode();
  FocusNode actualPalletFocusNode = FocusNode();
  FocusNode chargeablePalletFocusNode = FocusNode();
  FocusNode batchNoFocusNode = FocusNode();
  FocusNode manufacturingFocusNode = FocusNode();
  FocusNode expiryFocusNode = FocusNode();
  @override
  void initState() {
    manufacturingDate.text = "";
    expiryDate.text = "";
    super.initState();
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
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Transfer",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            height: 110.h,
            width: size.width.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: const Color.fromARGB(255, 19, 91, 151), width: 1.w)),
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
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 25.h),
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
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: qty,
              focusNode: qtyFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Qty/Pallet',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: qtyFocusNode.hasFocus
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
                  ),
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
              controller: chargeablePallet,
              focusNode: chargeablePalletFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(255, 19, 91, 151),
                  ),
                ),
                labelText: 'Chargeable Pallet',
                labelStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: chargeablePalletFocusNode.hasFocus
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
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 19, 91, 151),
                    )),
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: SizedBox(
              height: 40.h,
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
                    Get.to(const ScreenMoveTo());
                  },
                  child: Row(
                    children: [
                      const Spacer(),
                      Text("Move To",
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.bold)),
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
