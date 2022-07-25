import 'package:drs/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Task extends StatelessWidget {
  Task({Key? key, required this.tasktitle, required this.projecttitle})
      : super(key: key);
  String tasktitle, projecttitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Slidable(
        startActionPane: const ActionPane(
          // A motion is a widget used to control how the pane animates.
          motion: ScrollMotion(),

          // All actions are defined in the children parameter.
          children: [
            // A SlidableAction can have an icon and/or a label.
            SlidableAction(
              onPressed: null,
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              flex: 3,
            ),
          ],
        ),
        child: Container(
          height: 80.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: secondarygradient,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: darkergrey,
                  ),
                  child: Icon(
                    Icons.description_outlined,
                    color: primarycolor,
                    size: 26.sp,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tasktitle,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    projecttitle,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: greycolor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.more_vert,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
