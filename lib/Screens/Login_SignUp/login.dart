import 'dart:ui';

import 'package:drs/Constant.dart';
import 'package:drs/components/button.dart';
import 'package:drs/components/newTextField.dart';
import 'package:flutter/material.dart';
import 'package:drs/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/appTextField.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 135.h,
                    ),
                    const Text(
                      'Daily Task',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 64.h,
                    ),
                    NewTextField(
                      label1: 'Email',
                      hint1: 'Enter your email Id',
                      onChanged: (value) {},
                    ),
                    // TextFieldInput(
                    //   label: 'Email',
                    //   hint: 'Enter your email Id',
                    // ),
                    SizedBox(
                      height: 32.h,
                    ),
                    NewTextField(
                        onChanged: (value) {},
                        label1: 'Password',
                        hint1: 'Enter atleast 8-characters password'),
                    // TextFieldInput(
                    //     label: 'Password',
                    //     hint: 'Enter atleast 8-characters password'),
                    SizedBox(height: 64.h),
                    Button(
                        buttonTitle: 'Sign In',
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcome');
                        }),
                    // MaterialButton(
                    //   color: primarycolor,
                    //   height: 60.h,
                    //   minWidth: 244.w,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.r)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, '/welcome');
                    //   },
                    //   child: Text(
                    //     'Sign In',
                    //     style: TextStyle(
                    //         fontFamily: 'Poppins',
                    //         fontSize: 18.sp,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w800),
                    //   ),
                    // ),
                    SizedBox(
                      height: 123.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                              color: primarycolor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
