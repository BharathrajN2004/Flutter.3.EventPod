// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'detailpage.dart';
import 'eventcard.dart';

class eventrouting extends StatelessWidget {
  const eventrouting({
    Key? key,
    required this.collegename,
    required this.enddate,
    required this.eventname,
    required this.startdate,
    required this.imagepath,
    required this.height,
    required this.width,
    required this.aboutevent,
    required this.creti_detail,
    required this.contact,
    required this.event_mode,
    required this.fees,
    required this.location,
    required this.skilllist,
  }) : super(key: key);

  final String collegename;
  final String enddate;
  final String eventname;
  final String startdate;
  final String imagepath;
  final aboutevent;
  final creti_detail;
  final skilllist;
  final contact;
  final event_mode;
  final fees;
  final location;

  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          reverseTransitionDuration: Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) {
            final curveanimation =
                CurvedAnimation(parent: animation, curve: Interval(0, 0.5));

            return FadeTransition(
              opacity: curveanimation,
              child: detailevent(
                skilllist: skilllist,
                collagename: collegename,
                enddate: enddate,
                eventname: eventname,
                startdate: startdate,
                imgpath: imagepath,
                aboutevent: aboutevent,
                certi_detail: creti_detail,
                contact: contact,
                event_mode: event_mode,
                fees: fees,
                location: location,
              ),
            );
          })),
      child: eventcard(
          height: height,
          width: width,
          startdate: startdate,
          imagepath: imagepath,
          eventname: eventname,
          enddate: enddate,
          collegename: collegename),
    );
  }
}
