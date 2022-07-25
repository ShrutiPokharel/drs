import 'package:drs/Constant.dart';
import 'package:drs/NewTask/calender.dart';
import 'package:drs/ParticipantsWidget.dart';
import 'package:drs/components/button.dart';
import 'package:drs/components/newTextField.dart';
import 'package:drs/components/projectClass.dart';
import 'package:drs/components/userClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTask extends StatelessWidget {
  NewTask({Key? key}) : super(key: key);
  ProjectClass newProject = ProjectClass.empty();

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
                    'Create New Project',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: background),
                  ),
                  Spacer(),
                  Spacer(),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.close),
                  //   iconSize: 20.sp,
                  //   color: Colors.transparent,
                  // ),
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
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 24.w,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        Calender(
                          onChanged: (val) {
                            newProject.projectAssignedDate = val;
                          },
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        NewTextField(
                            onChanged: (value) {
                              newProject.projectName = value;
                            },
                            label1: 'Project',
                            hint1: 'Enter the project name'),
                        NewTextField(
                          label1: 'Task',
                          hint1: 'Enter main task of the project',
                          // addicon: Icons.add_circle,
                          onChanged: (value) {
                            newProject.projectTaskTitle = value;
                          },
                        ),
                        NewTextField(
                          label1: 'Description',
                          hint1: 'Describe the project',
                          onChanged: (value) {
                            newProject.projectTaskDescription = value;
                          },
                        ),
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
                        Participants(
                          onChanged: (value) {
                            newProject.projectParticipants.clear();
                            newProject.projectParticipants.addAll(value);
                          },
                          users: users,
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        Button(
                          buttonTitle: 'Create',
                          onPressed: () {
                            // newProject
                            newProject.projectCreatedDate = DateTime.now();

                            Navigator.pop(context, newProject);
                          },
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
