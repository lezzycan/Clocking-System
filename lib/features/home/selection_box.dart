import 'package:clocking_system/features/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SelectionBox extends StatelessWidget {
  bool isSelected;
  String txt;
  SelectionBox({Key? key, required this.isSelected, required this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // specify type as Controller// intialize with the Controller
      builder: (value) => Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Color(0xFFF7F8FA),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 10.sp,
            color: isSelected ? Colors.white : Color(0xff151617),
          ),
        ),
      ),
    );
  }
}

class SelectionDateBox extends StatelessWidget {
  String txt;
  String selected_date;
  SelectionDateBox({Key? key, required this.txt,required this.selected_date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // specify type as Controller// intialize with the Controller
      builder: (value) => Row(
        children: [
          Text(
            txt,
            style: TextStyle(
              fontSize: 10.sp,
              color: Color(0xff151617),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Color(0xFFF7F8FA),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Row(
              children: [
               const Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  selected_date,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0xff151617),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
