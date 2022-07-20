import 'package:drs/Participants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleParticipant extends StatelessWidget {
  const SingleParticipant(
      {Key? key, required this.profilePicture, required this.onTap})
      : super(key: key);
  final String profilePicture;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 18.r,
        child: profilePicture != " "
            ? GestureDetector(
                onTap: () {
                  onTap();
                },
                child: Image.asset(profilePicture))
            : IconButton(
                onPressed: () {
                  onTap();
                },
                icon: Icon(Icons.add)),
      ),
    );
  }
}
