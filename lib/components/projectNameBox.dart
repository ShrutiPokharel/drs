import 'package:drs/Participants.dart';
import 'package:drs/components/singleParticipant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectNameBox extends StatelessWidget {
  ProjectNameBox({Key? key}) : super(key: key);
  List<String> taskProfile = [
    'profile1.jpg',
    'profile2.jpg',
    'profile3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 145.h,
      width: 212.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              SingleParticipant(
                profilePicture: 'assets/profile/profile1.jpg',
                onTap: () {},
                profileRadius: 13.r,
                outline: true,
                proLength: 3,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
