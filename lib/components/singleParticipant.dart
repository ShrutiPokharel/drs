import 'package:drs/Constant.dart';
import 'package:drs/Participants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleParticipant extends StatelessWidget {
  SingleParticipant(
      {Key? key,
      required this.profilePicture,
      required this.onTap,
      this.profileRadius,
      this.outline = false, this.proLength})
      : super(key: key);
  final String profilePicture;
  final Function onTap;
  double? profileRadius;
  bool outline;
  double? proLength;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outline ? ((profileRadius ?? 18.r) + 2) : (profileRadius ?? 18.r),
      backgroundColor: Colors.white,
      child: ClipOval(
        child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: profileRadius ?? 18.r,
            child: profilePicture != " " 
                ? proLength== null ?GestureDetector(
                    onTap: () {
                      onTap();
                    },
                    child: Image.asset(profilePicture)): Icon(
                      Icons.add,
                      color: background,
                    )
                : GestureDetector(
                    onTap: () {
                      onTap();
                    },
                    child: 
                    Icon(
                      Icons.add,
                      color: background,
                    ))),
      ),
    );
  }
}
