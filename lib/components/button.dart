import 'package:drs/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.buttonTitle, this.onPressed})
      : super(key: key);
  String buttonTitle;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 18.h,
        ),
        child: Text(buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white)),
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), gradient: primarygradient),
      ),
    );
  }
}
