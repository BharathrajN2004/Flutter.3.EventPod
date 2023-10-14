// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import '/components/homepage/myhero.dart';
import 'package:flutter/material.dart';

class eventcard extends StatelessWidget {
  const eventcard({
    Key? key,
    required this.height,
    required this.width,
    required this.startdate,
    required this.imagepath,
    required this.eventname,
    required this.enddate,
    required this.collegename,
  }) : super(key: key);

  final height;
  final width;
  final String startdate;
  final String imagepath;
  final String eventname;
  final String enddate;
  final String collegename;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      margin: EdgeInsets.only(bottom: height * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.04),
        color: Color.fromARGB(255, 230, 230, 230),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -18,
            right: 8,
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                      )
                    ],
                    color: Color.fromARGB(255, 242, 242, 242),
                    shape: BoxShape.circle),
                child: Center(child: Text(startdate.substring(0, 2)))),
          ),
          Positioned(
            top: height * 0.015,
            left: width * 0.03,
            child: myhero(
              tag: imagepath,
              child: Container(
                height: height * 0.17,
                width: width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.04),
                  image: DecorationImage(
                      image: AssetImage('assets/images/209210.jpg'),
                      fit: BoxFit.cover),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          Positioned(
              top: height * 0.025,
              left: width * 0.38,
              width: width * 0.5,
              child: myhero(
                tag: eventname,
                child: Text(
                  eventname.length <= 15
                      ? eventname
                      : eventname.substring(0, 15) + '..',
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w700),
                ),
              )),
          Positioned(
            top: height * 0.07,
            left: width * 0.38,
            child: Row(
              children: [
                myhero(tag: startdate, child: Text(startdate)),
                SizedBox(
                  width: 15,
                ),
                myhero(tag: enddate, child: Text(enddate))
              ],
            ),
          ),
          Positioned(
            top: height * 0.11,
            left: width * 0.38,
            width: width * 0.5,
            child: myhero(
              tag: collegename,
              child: Text(
                collegename,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
