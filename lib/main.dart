import 'package:drs/NewTask/CreateNewTask.dart';
import 'package:drs/Screens/Login_SignUp/signUp.dart';
import 'package:drs/Screens/welcomePage/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:drs/Screens/Login_SignUp/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: Login(),
          initialRoute: '/login',
          routes: {
            '/login': (context) => Login(),
            '/signup': (context) => SignUp(),
            '/welcome': (context) => WelcomePage(),
            '/newtask': (context) => NewTask(),
          },
        );
      },
    );
  }
}
