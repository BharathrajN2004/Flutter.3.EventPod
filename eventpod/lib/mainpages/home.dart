// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import '../components/homepage/eventrouting.dart';

class home extends StatelessWidget {
  final height;
  final width;
  home({required this.height, required this.width});

  var name = 'bharathraj.N';
  var wishes = 'Good Morning';
  var greet = 'Hey';
  var month = 'December';

  // ex
  var eventname = 'Event Name bharathrajN';
  var imagepath =
      'https://www.knowafest.com/files/uploads/Tecblaze%20Logo2-2023011806.png';
  var collegename = 'Sri Sairam Institute Of Technology';
  var startdate = '09.07.2023';
  var enddate = '27.08.2023';
  var aboutevent;
  var creti_detail;
  var contact;
  var event_mode;
  var fees;
  var location;
  var skilllist;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      // margin: EdgeInsets.,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.menu_rounded,
                  size: width * 0.08,
                ),
              ),
              Spacer(),
              Text(
                'EventPod',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Spacer(),
              Container(
                height: width * 0.15,
                width: width * 0.15,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.03),
                ),
                child: Icon(Icons.home_filled),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: width * 0.05, bottom: height * 0.015, top: height * 0.03),
            child: Row(
              children: [
                Text(
                  greet + ' ',
                  style: TextStyle(
                      fontSize: width * 0.055,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 44, 44, 44)),
                ),
                Text(
                  name[0].toUpperCase() + name.substring(1),
                  style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05),
            child: Text(
              wishes,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.045,
                  color: Color.fromARGB(255, 44, 44, 44)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: height * 0.035, left: width * 0.05, right: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Events',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.04,
                      color: Colors.black87),
                ),
                Text(
                  month,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.035),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: width * 0.05, right: width * 0.05, top: height * 0.02),
            height: height * 0.04,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              eventcat(width: width, height: height, event_string: 'Hackathon'),
              eventcat(width: width, height: height, event_string: 'Symposium'),
              eventcat(width: width, height: height, event_string: 'Summit'),
              eventcat(
                  width: width, height: height, event_string: 'Conference'),
              eventcat(
                  width: width, height: height, event_string: 'Special Events'),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: width * 0.05, right: width * 0.05, top: height * 0.02),
              width: width,
              child: ListView(children: [
                eventrouting(
                    skilllist: skilllist,
                    collegename: collegename,
                    enddate: enddate,
                    eventname: eventname,
                    startdate: startdate,
                    imagepath: imagepath,
                    height: height,
                    width: width,
                    aboutevent: aboutevent,
                    creti_detail: creti_detail,
                    contact: contact,
                    event_mode: event_mode,
                    fees: fees,
                    location: location),
                eventrouting(
                    skilllist: skilllist,
                    collegename: collegename,
                    enddate: enddate,
                    eventname: eventname,
                    startdate: startdate,
                    imagepath: imagepath,
                    height: height,
                    width: width,
                    aboutevent: aboutevent,
                    creti_detail: creti_detail,
                    contact: contact,
                    event_mode: event_mode,
                    fees: fees,
                    location: location),
                eventrouting(
                    skilllist: skilllist,
                    collegename: collegename,
                    enddate: enddate,
                    eventname: eventname,
                    startdate: startdate,
                    imagepath: imagepath,
                    height: height,
                    width: width,
                    aboutevent: aboutevent,
                    creti_detail: creti_detail,
                    contact: contact,
                    event_mode: event_mode,
                    fees: fees,
                    location: location),
                eventrouting(
                    skilllist: skilllist,
                    collegename: collegename,
                    enddate: enddate,
                    eventname: eventname,
                    startdate: startdate,
                    imagepath: imagepath,
                    height: height,
                    width: width,
                    aboutevent: aboutevent,
                    creti_detail: creti_detail,
                    contact: contact,
                    event_mode: event_mode,
                    fees: fees,
                    location: location),
                eventrouting(
                    skilllist: skilllist,
                    collegename: collegename,
                    enddate: enddate,
                    eventname: eventname,
                    startdate: startdate,
                    imagepath: imagepath,
                    height: height,
                    width: width,
                    aboutevent: aboutevent,
                    creti_detail: creti_detail,
                    contact: contact,
                    event_mode: event_mode,
                    fees: fees,
                    location: location)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class eventcat extends StatelessWidget {
  const eventcat({
    Key? key,
    required this.width,
    required this.height,
    required this.event_string,
  }) : super(key: key);

  final width;
  final height;
  final event_string;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: width * 0.03),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 218, 202, 255), width: 2),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(172, 228, 216, 255),
                Color.fromARGB(80, 228, 216, 255)
              ]),
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.03, vertical: height * 0.008),
      child: Text(event_string),
    );
  }
}
