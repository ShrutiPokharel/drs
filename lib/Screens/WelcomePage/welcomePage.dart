import 'package:drs/Constant.dart';
import 'package:drs/Screens/WelcomePage/projectNameList.dart';
import 'package:drs/Screens/welcomePage/projectNameList.dart';
import 'package:drs/components/projectNameBox.dart';
import 'package:drs/components/task.dart';
import 'package:drs/tabSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constant.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProjectNameBox(),
            TabSelect(),
            Task(
                tasktitle: 'Video Manager file server',
                projecttitle: 'EZSales'),
            Task(tasktitle: 'Video Manager screenshot', projecttitle: 'EZSales')
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
          child: BottomAppBar(
            color: navBar,
            shape: CircularNotchedRectangle(), //shape of notch
            notchMargin: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: greycolor,
                    size: 30.sp,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: greycolor,
                    // color: const Color(0xFFBCBCBC),
                    size: 30.sp,
                  ),
                ],
              ),
            ),
          )
          // child: BottomNavigationBar(
          //     showSelectedLabels: false,
          //     showUnselectedLabels: false,
          //     backgroundColor: navBar,
          //     // fixedColor: navBar,
          //     // unselectedItemColor: navBar,
          //     items: [
          //       BottomNavigationBarItem(
          //         backgroundColor: navBar,
          //         icon: Icon(
          //           Icons.home,
          //           color: greycolor,
          //           size: 30.sp,
          //         ),
          //         label: '',
          //       ),

          //       // BottomNavigationBarItem(
          //       //     icon: Icon(
          //       //       Icons.add_circle_outline_rounded,
          //       //       size: 1,
          //       //       color: Colors.transparent,
          //       //     ),
          //       //     label: ''),

          //       BottomNavigationBarItem(
          //           icon: Icon(
          //             Icons.person_outline,
          //             color: greycolor,
          //             // color: const Color(0xFFBCBCBC),
          //             size: 30.sp,
          //           ),
          //           label: '')
          //     ]),
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: greycolor,
        child: Icon(
          Icons.add,
          color: background,
          size: 30.sp,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/newtask');
        },
      ),
    );
  }
}
