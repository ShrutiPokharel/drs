import 'package:drs/Constant.dart';
import 'package:drs/NewTask/calender.dart';
import 'package:drs/Participants.dart';
import 'package:drs/components/appTextField.dart';
import 'package:drs/components/button.dart';
import 'package:drs/components/newTextField.dart';
import 'package:drs/components/singleParticipant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTask extends StatelessWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: kBottomNavigationBarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: background,
                      size: 20.sp,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Create New Task',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: background),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close),
                    iconSize: 20.sp,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Calender(
                          onChanged: (val) {
                            print(val);
                          },
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        NewTextField(
                            label1: 'Project', hint1: 'Enter the project name'),
                        NewTextField(
                            label1: 'Task', hint1: 'Enter the title of task'),
                        NewTextField(
                            label1: 'Description', hint1: 'Describe the task'),
                        Text(
                          'Participants',
                          style: TextStyle(
                              color: greycolor,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Participants(),
                        SizedBox(
                          height: 38.h,
                        ),
                        Button(
                          buttonTitle: 'Create',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 100.h,
                        )
                      ],
                    ),
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
