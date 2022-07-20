import 'package:drs/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CalenderDay extends StatelessWidget {
  CalenderDay({Key? key, required this.date, required this.isSelected})
      : super(key: key);
  DateTime date;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   DateFormat("MMM").format(date),
        //   style: TextStyle(
        //     fontFamily: 'Mulish',
        //     fontSize: 24,
        //     fontWeight: FontWeight.w800,
        //     color: Colors.white,
        //   ),
        // ),
        Container(
          height: 90.h,
          width: 64.w,
          decoration: BoxDecoration(
            gradient: isSelected ? primarygradient : secondarygradient,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat("EE").format(date),
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                date.day.toString(),
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
