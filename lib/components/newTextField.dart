import 'package:drs/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTextField extends StatelessWidget {
  NewTextField({
    Key? key,
    required this.label1,
    required this.hint1,
    required this.onChanged,
    this.validation,
  }) : super(key: key);
  final String label1, hint1;
  final Function(String) onChanged;
  final Function(String)? validation;

  // final IconData? addicon;
  // final Function? iconOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label1,
            style: TextStyle(
                color: greycolor,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                fontSize: 16.sp),
          ),
          TextFormField(
            validator: (value) {
              return null;
              //  return validation!(value!);
            },
            onChanged: (value) {
              onChanged(value);
            },
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Mulish',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              // suffixIcon: GestureDetector(
              //     onTap: () {
              //       iconOnTap!();
              //     },
              //     child: Icon(
              //       addicon,
              //       color: greycolor,
              //     )),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFD9D9D9),
                  width: 1.2,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFD9D9D9),
                  width: 1.2,
                ),
              ),
              hintText: hint1,
              hintStyle: TextStyle(
                color: Colors.white.withAlpha(127),
                fontFamily: 'Mulish',
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
