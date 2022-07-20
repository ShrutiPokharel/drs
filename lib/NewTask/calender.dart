import 'dart:ui';

import 'package:drs/Constant.dart';
import 'package:drs/NewTask/calenderDay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key, required this.onChanged}) : super(key: key);
  final Function(DateTime val) onChanged;
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  int currentlySelected = 0;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '${DateFormat("MMMM, d").format(selectedDate)}',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp),
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              '${DateFormat("EEEE").format(selectedDate)}',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
          color: background,
          height: 120.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentlySelected = index;
                      widget
                          .onChanged(DateTime.now().add(Duration(days: index)));
                      selectedDate = DateTime.now().add(Duration(days: index));
                    });
                  },
                  child: CalenderDay(
                    isSelected: currentlySelected == index,
                    date: DateTime.now().add(Duration(days: index)),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.w,
                );
              },
              itemCount: 7),
        ),
      ],
    );
  }
}
