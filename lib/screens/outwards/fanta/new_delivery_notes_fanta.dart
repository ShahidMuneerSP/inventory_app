import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventory_app_ui/screens/outwards/fanta/add_outward_fanta.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:intl/intl.dart';

class NewDeliveryNotesFanta extends StatefulWidget {
  const NewDeliveryNotesFanta({Key? key}) : super(key: key);

  @override
  State<NewDeliveryNotesFanta> createState() => _NewDeliveryNotesFantaState();
}

class _NewDeliveryNotesFantaState extends State<NewDeliveryNotesFanta> {
  bool isVisible = false;
  String text = "";
  TextEditingController manufacturingDate = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController warehouse = TextEditingController();
  TextEditingController bin = TextEditingController();
  TextEditingController qty = TextEditingController();
  TextEditingController qty1 = TextEditingController();
  TextEditingController issuedPallet = TextEditingController();
  TextEditingController batchNo = TextEditingController();
  TextEditingController batchNo1 = TextEditingController();
  FocusNode wareHouseFocusNode = FocusNode();
  FocusNode binFocusNode = FocusNode();
  FocusNode qtyFocusNode = FocusNode();
  FocusNode qty1FocusNode = FocusNode();
  FocusNode issuedPalletFocusNode = FocusNode();
  FocusNode batchNoFocusNode = FocusNode();
  FocusNode batchNo1FocusNode = FocusNode();
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
          "New Delivery Notes",
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
                    color: const Color.fromARGB(223, 183, 40, 27), width: 1.w)),
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
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 88.w,
                      ),
                      Text(
                        "Product Type",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 17.sp,
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
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 77.w,
                    ),
                    Text(
                      "Chiller",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
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
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "CTN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 43.w,
                      ),
                      Text(
                        "Quantity: ",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "300",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
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
                      color: const Color.fromARGB(223, 183, 40, 27)),
                ),
                prefixIcon: const Icon(
                  Icons.home_work_sharp,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(223, 183, 40, 27),
                  ),
                ),
                labelText: 'WAREHOUSE',
                labelStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: wareHouseFocusNode.hasFocus
                        ? const Color.fromARGB(223, 183, 40, 27)
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
                            color: const Color.fromARGB(223, 183, 40, 27)),
                      ),
                      prefixIcon: const Icon(
                        Icons.restore_from_trash_rounded,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          width: 1.w,
                          color: const Color.fromARGB(223, 183, 40, 27),
                        ),
                      ),
                      labelText: 'Bin(Pallet)',
                      labelStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: binFocusNode.hasFocus
                              ? const Color.fromARGB(223, 183, 40, 27)
                              : Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 60.w,
                  height: 51.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide(
                            color: const Color.fromARGB(223, 183, 40, 27),
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
              controller: qty,
              focusNode: qtyFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27)),
                ),
                prefixIcon: const Icon(
                  Icons.production_quantity_limits_outlined,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: const Color.fromARGB(223, 183, 40, 27),
                  ),
                ),
                labelText: 'Quantity',
                labelStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: qtyFocusNode.hasFocus
                        ? const Color.fromARGB(223, 183, 40, 27)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
            child: TextFormField(
              controller: issuedPallet,
              focusNode: issuedPalletFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(223, 183, 40, 27)),
                ),
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
                    color: const Color.fromARGB(223, 183, 40, 27),
                  ),
                ),
                labelText: 'Issued Pallet',
                labelStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: issuedPalletFocusNode.hasFocus
                        ? const Color.fromARGB(223, 183, 40, 27)
                        : Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 10.h),
            child: SizedBox(
              height: 50.h,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(223, 183, 40, 27),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color.fromARGB(223, 183, 40, 27),
                      )),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ))),
                  onPressed: () async {
                    await openDialog();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.batch_prediction,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("Add Batch",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400)),
                    ],
                  )),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: SizedBox(
                height: 70.h,
                width: size.width.w,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            border: Border.all(
                              color: const Color.fromARGB(223, 183, 40, 27),
                            )),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Batch : ${batchNo1.text} ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: ()  {
                                   openDialog();
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.black54,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(223, 183, 40, 27),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 135.w, vertical: 20.h),
            child: SizedBox(
              height: 30.h,
              width: 80.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(223, 183, 40, 27),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ))),
                  onPressed: () {
                    Get.to(const AddOutwardFanta());
                  },
                  child: Row(
                    children: [
                      const Spacer(),
                      Text("Add Bin",
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

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: TextFormField(
                      controller: batchNo1,
                      focusNode: batchNo1FocusNode,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            width: 1.w,
                            color: const Color.fromARGB(223, 183, 40, 27),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
                          ),
                        ),
                        labelText: 'Batch No',
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: batchNo1FocusNode.hasFocus
                                ? const Color.fromARGB(223, 183, 40, 27)
                                : Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: TextFormField(
                      controller: qty1,
                      focusNode: qty1FocusNode,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            width: 1.w,
                            color: const Color.fromARGB(223, 183, 40, 27),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
                          ),
                        ),
                        labelText: 'Quantity',
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: qty1FocusNode.hasFocus
                                ? const Color.fromARGB(223, 183, 40, 27)
                                : Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
                          ),
                        ),
                        labelText: 'Manufacturing Date',
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: manufacturingFocusNode.hasFocus
                                ? const Color.fromARGB(223, 183, 40, 27)
                                : Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
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
                            color: const Color.fromARGB(223, 183, 40, 27),
                          ),
                        ),
                        labelText: 'Expiry Date',
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: expiryFocusNode.hasFocus
                                ? const Color.fromARGB(223, 183, 40, 27)
                                : Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: SizedBox(
                      height: 35.h,
                      width: 70.w,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(223, 183, 40, 27),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ))),
                          onPressed: () {
                            setState(() {
                              batchNo1.text;
                              isVisible = !isVisible;
                            });
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Spacer(),
                              Text("DONE",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ));
}
