import 'package:drs/Constant.dart';
import 'package:drs/components/singleParticipant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Participants extends StatefulWidget {
  const Participants({Key? key}) : super(key: key);

  @override
  State<Participants> createState() => _ParticipantsState();
}

const profileBase = "assets/profile/";

class _ParticipantsState extends State<Participants> {
  List<String> participants = [
    'profile1.jpg',
    'profile2.jpg',
    'profile3.jpg',
    'profile4.jpg',
    'profile5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Stack(
        children: getComponents(),
      ),
    );
  }

  List<Widget> getComponents() {
    // var comps = participants.map((e) {
    //   return Positioned(
    //     top: 0,
    //     left: participants.indexOf(e).toDouble() * 25,
    //     child: SingleParticipant(profilePicture: profileBase + e),
    //   );
    // }).toList();
    List<Widget> comps = [];

    for (int i = 0; i < participants.length; i++) {
      comps.add(Positioned(
          top: 0,
          left: i * 30,
          child: SingleParticipant(
            onTap: () {
              print(i);
            },
            profilePicture: profileBase + participants[i],
          )));
    }

    comps.add(Positioned(
        top: 0,
        left: participants.length * 30,
        child: SingleParticipant(
            onTap: () {
              setState(() {
                participants.add(participants[0]);
              });
            },
            profilePicture: " ")));
    // participants.add(profileBase + 'profile1.jpg');
    return comps;
  }
}
