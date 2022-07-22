import 'package:drs/Participants.dart';
import 'package:drs/components/singleParticipant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectNameBox extends StatelessWidget {
  const ProjectNameBox({Key? key}) : super(key: key);

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
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              SingleParticipant(
                  profilePicture: 'assets/profile/profile1.jpg', onTap: () {})
            ],
          ))
        ],
      ),
    );
  }
}
