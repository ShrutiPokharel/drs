import 'package:drs/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabSelect extends StatefulWidget {
  const TabSelect({Key? key}) : super(key: key);

  @override
  State<TabSelect> createState() => _TabSelectState();
}

class _TabSelectState extends State<TabSelect> {
  List<String> tabTitle = ['Task List', 'Completed'];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ...tabTitle.map((e) {
            return Expanded(child: selectedItem(tabtitle: e));
          })
        ],
      ),
    );
  }

  Widget selectedItem({required String tabtitle}) {
    var index = tabTitle.indexOf(tabtitle);
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: selected == index ? background : Colors.transparent,
        ),
        child: Center(
          child: Text(
            tabtitle,
            style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                color: selected == index ? Colors.white : background),
          ),
        ),
      ),
    );
  }
}
