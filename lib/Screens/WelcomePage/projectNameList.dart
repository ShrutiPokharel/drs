import 'package:drs/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectName extends StatelessWidget {
  const ProjectName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 0),
        height: 90 * heightRatio.h,
        width: 65 * widthRatio.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12 * heightRatio.r),
          color: Color(0xFF028960),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          print(constraints.maxHeight);
          print(constraints.maxWidth);

          var heightMultiplier = 0.8 * constraints.maxHeight;
          var topspace = (constraints.maxHeight - heightMultiplier) / 2;
          return Stack(
            children: [
              Positioned(
                left: (heightMultiplier / 2),
                top: topspace,
                child: Container(
                  height: heightMultiplier,
                  width: heightMultiplier,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF40B590).withOpacity(0.5),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        color: Colors.white,
                        Icons.person_outline_rounded,
                      ),
                      Text(
                        '  Project #1',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Text(
                    'Project Name',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text(
                    DateTime.now().toString().substring(0, 19),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          );
        }));
  }
}
