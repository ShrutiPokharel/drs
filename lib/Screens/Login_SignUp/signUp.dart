import 'package:drs/Constant.dart';
import 'package:drs/components/button.dart';
import 'package:drs/components/newTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/appTextField.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  const Text(
                    'Create New Account',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  NewTextField(
                      label1: 'Username', hint1: 'Enter your username'),

                  SizedBox(
                    height: 30.h,
                  ),
                  NewTextField(label1: 'Email', hint1: 'Enter your email Id'),

                  SizedBox(
                    height: 30.h,
                  ),
                  NewTextField(
                      label1: 'Password',
                      hint1: 'Enter atleast 8-characters password'),

                  SizedBox(
                    height: 30.h,
                  ),
                  NewTextField(
                      label1: 'Confirm Password',
                      hint1: 'rewrite your password'),

                  // TextFieldInput(
                  //     label: 'Company', hint: "Enter your company's name"),
                  // SizedBox(
                  //   height: 30.h,
                  // ),
                  // TextFieldInput(
                  //     label: 'Department', hint: 'Enter your department'),
                  // SizedBox(
                  //   height: 30.h,
                  // ),
                  // TextFieldInput(
                  //     label: 'Designation', hint: 'Enter your position'),
                  SizedBox(
                    height: 40.h,
                  ),
                  Button(
                    buttonTitle: 'Sign Up',
                    onPressed: () {},
                  ),
                  // MaterialButton(
                  //   color: primarycolor,
                  //   height: 60.h,
                  //   minWidth: 244.w,
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10.r)),
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Sign Up',
                  //     style: TextStyle(
                  //         fontFamily: 'Poppins',
                  //         fontSize: 18.sp,
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.w800),
                  //   ),
                  // ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w800,
                            color: primarycolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
