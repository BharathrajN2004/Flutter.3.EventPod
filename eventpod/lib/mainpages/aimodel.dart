// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:ui';

// import '../components/homepage/eventcard.dart';
import 'package:eventpod/class/boxes.dart';
import 'package:eventpod/class/edtail.dart';
import 'package:eventpod/components/homepage/eventcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hive/hive.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/homepage/eventrouting.dart';

class aimodel extends StatelessWidget {
  final height;
  final width;

  aimodel({required this.height, required this.width});

  var eventname = 'Event Name bharathrajN';

  var imagepath =
      'https://www.knowafest.com/files/uploads/Tecblaze%20Logo2-2023011806.png';

  var collegename = 'Sri Sairam Institute Of Technology';

  var startdate = '09.07.2023';

  var enddate = '27.08.2023';

  // checklist
  var chartdata = [30, 20];

  var reqskill = 30.toString() + '%';

  var availskill = 20.toString() + '%';

  // ScrollController controller = ScrollController();
  var persink = false;

  var skillsink = false;

  @override
  Widget build(BuildContext context) {
    List skillcard = [
      skillcontainer(
          width: width, height: height, skill_name: 'html', known_bool: true),
      skillcontainer(
          width: width, height: height, skill_name: 'CSS', known_bool: true),
      skillcontainer(
          width: width,
          height: height,
          skill_name: 'spring',
          known_bool: false),
      skillcontainer(
          width: width,
          height: height,
          skill_name: 'express',
          known_bool: false),
      skillcontainer(
          width: width,
          height: height,
          skill_name: 'mongoDB',
          known_bool: true),
    ];

    var card = eventcard(
        collegename: collegename,
        enddate: enddate,
        eventname: eventname,
        startdate: startdate,
        imagepath: imagepath,
        height: height,
        width: width);
    var val = width * 0.2;

    var today = DateTime.now();
    return Container(
        padding: EdgeInsets.only(
            top: height * 0.015, left: width * 0.04, right: width * 0.04),
        child: Column(
          children: [
            Text(
              'ANALYZER',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              // height: widget.height * 0.2,
              child: card,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    // color: Colors.red,
                    width: width,
                    margin: EdgeInsets.only(bottom: height * 0.01),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Percentage Indicator',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Container(
                                // color: Colors.red,
                                height: height * 0.22,
                                width: width * 0.52,
                                child: SfCircularChart(
                                  centerX: '${val}',
                                  margin: EdgeInsets.all(0),
                                  series: <CircularSeries>[
                                    RadialBarSeries(
                                        maximumValue: 100,
                                        animationDuration: 2000,
                                        // strokeColor: ,
                                        gap: '2',
                                        cornerStyle: CornerStyle.bothCurve,
                                        // trackColor: Colors.transparent,
                                        xValueMapper: (datum, index) => index,
                                        yValueMapper: ((datum, index) =>
                                            chartdata[index]),
                                        dataSource: chartdata)
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Required Skill',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    reqskill,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: height * 0.015,
                                  ),
                                  Text(
                                    'Available Skill',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    availskill,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills Required',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: height * 0.01),
                            height: height * 0.2,
                            width: width,
                            // padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: MasonryGridView.count(
                              crossAxisCount: 3,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              itemCount: skillcard.length,
                              itemBuilder: (context, index) {
                                return skillcard[index];
                              },
                            ))
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time Table',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: height * 0.01, bottom: height * 0.01),
                        child: TableCalendar(
                          calendarStyle: CalendarStyle(
                              defaultTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          firstDay: DateTime.utc(2023, 02, 01),
                          lastDay: DateTime.utc(2023, 03, 01),
                          focusedDay: DateTime.now(),
                        ),
                      ),
                      Text(
                        'Required Time',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LinearPercentIndicator(
                        width: width * 0.7,
                        lineHeight: height * 0.015,
                        animationDuration: 600,
                        percent: 0.8,
                        barRadius: Radius.circular(10),
                        linearGradient: LinearGradient(colors: [
                          Color.fromARGB(255, 173, 118, 255),
                          Color.fromARGB(255, 216, 182, 255),
                        ]),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Available Time',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LinearPercentIndicator(
                        width: width * 0.7,
                        lineHeight: height * 0.015,
                        animationDuration: 600,
                        percent: 0.4,
                        barRadius: Radius.circular(10),
                        linearGradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 118, 155),
                          Color.fromARGB(255, 255, 182, 205),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Sucess Indicator',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: height * 0.2,
                        child: CircularPercentIndicator(
                            percent: .6,
                            radius: width * 0.1,
                            lineWidth: 10,
                            backgroundColor: Color.fromARGB(255, 215, 215, 215),
                            linearGradient: LinearGradient(colors: [
                              Color.fromARGB(255, 49, 255, 155),
                              Color.fromARGB(255, 187, 246, 189)
                            ])),
                      ),
                      SizedBox(
                        width: width * 0.4,
                        child: Text(
                          'The winning rate can be improved by practice',
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 139, 139),
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class skillcontainer extends StatelessWidget {
  const skillcontainer({
    Key? key,
    required this.width,
    required this.height,
    required this.skill_name,
    required this.known_bool,
  }) : super(key: key);

  final width;
  final height;
  final String skill_name;
  final bool known_bool;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.04, vertical: height * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: !known_bool
                ? Color.fromARGB(255, 255, 203, 203)
                : Color.fromARGB(255, 206, 206, 206)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: !known_bool
                ? [
                    Color.fromARGB(255, 255, 225, 225),
                    Color.fromARGB(255, 255, 241, 241)
                  ]
                : [
                    Color.fromARGB(255, 228, 228, 255),
                    Color.fromARGB(255, 244, 244, 255),
                  ]),
      ),
      child: Center(
          child: Text(
        skill_name[0].toUpperCase() + skill_name.substring(1),
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color.fromARGB(255, 78, 78, 78)),
      )),
    );
  }
}
