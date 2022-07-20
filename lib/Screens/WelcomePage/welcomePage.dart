import 'package:drs/Constant.dart';
import 'package:drs/Screens/welcomePage/projectNameList.dart';
import 'package:drs/components/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constant.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Task(tasktitle: 'Video Manager file server', projecttitle: 'EZSales'), Task(tasktitle: 'Video Manager screenshot', projecttitle: 'EZSales')
        ],
      ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text(
      //       'Projects',
      //       style: TextStyle(
      //         fontFamily: 'Poppins',
      //         fontSize: 26.sp,
      //         fontWeight: FontWeight.w800,
      //       ),
      //     ),
      //     ProjectName(),
      //   ],
      // ),
      bottomNavigationBar:
          BottomNavigationBar(showSelectedLabels: false, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xFFBCBCBC),
            size: (10 * heightRatio).r,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month_outlined,
            color: Color(0xFFBCBCBC),
            size: 9 * heightRatio.r,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              splashColor: primarycolor,
              icon: Icon(
                Icons.add_circle_outline_rounded,
                size: 10 * heightRatio.r,
                color: Color(0xFFBCBCBC),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/newtask');
              },
            ),
            label: ''),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_outlined,
            color: const Color(0xFFBCBCBC),
            size: 10 * heightRatio.r,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: const Color(0xFFBCBCBC),
              size: 10 * heightRatio.r,
            ),
            label: '')
      ]),
    );
  }
}
