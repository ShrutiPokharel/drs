import 'package:drs/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldInput extends StatelessWidget {
  TextFieldInput({
    required this.label,
    required this.hint,
    Key? key,
  }) : super(key: key);
  String label, hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            offset: Offset(0, 4),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
          )
        ],
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0.r),
        child: Center(
          child: TextField(
            // onChanged: (value) {},
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: label,
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                floatingLabelStyle: const TextStyle(
                  color: primarycolor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
                hintText: hint),
          ),
        ),
      ),
    );
  }
}
