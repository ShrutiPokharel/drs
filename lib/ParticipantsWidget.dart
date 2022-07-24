import 'package:drs/Constant.dart';
import 'package:drs/components/singleParticipant.dart';
import 'package:drs/components/userClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Participants extends StatefulWidget {
  const Participants({Key? key, required this.onChanged, required this.users})
      : super(key: key);
  final Function(List<User>) onChanged;
  final List<User> users;

  @override
  State<Participants> createState() => _ParticipantsState();
}

const profileBase = "assets/profile/";

class _ParticipantsState extends State<Participants> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // widget.onChanged(participants);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
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

    for (int i = 0; i < users.length; i++) {
      comps.add(
        Positioned(
          top: 0,
          left: i * 30,
          child: SingleParticipant(
            onTap: () {
              print(i);
            },
            profilePicture: profileBase + users[i].profilePicture,
          ),
        ),
      );
    }

    comps.add(
      Positioned(
        top: 0,
        left: users.length * 30,
        child: SingleParticipant(
            onTap: () {
              setState(() {
                users.add(users[0]);
              });
            },
            profilePicture: " "),
      ),
    );
    // participants.add(profileBase + 'profile1.jpg');
    return comps;
  }
}
