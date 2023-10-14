// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../components/homepage/eventcard.dart';
import '../components/searchcat.dart';

class recomendation extends StatefulWidget {
  final height;
  final width;

  recomendation({required this.height, required this.width});

  @override
  State<recomendation> createState() => _recomendationState();
}

class _recomendationState extends State<recomendation> {
  var eventname = 'Event Name bharathrajN';
  var imagepath =
      'https://www.knowafest.com/files/uploads/Tecblaze%20Logo2-2023011806.png';
  var collegename = 'Sri Sairam Institute Of Technology';
  var startdate = '09.07.2023';
  var enddate = '27.08.2023';
  String searchstring = 'Match Percentage';
  bool filter = false;
  @override
  Widget build(BuildContext context) {
    var chart = Column(
      children: [
        eventcard(
            height: widget.height,
            width: widget.width,
            startdate: startdate,
            imagepath: imagepath,
            eventname: eventname,
            enddate: enddate,
            collegename: collegename),
        SizedBox(
          height: widget.height * 0.01,
        ),
        Row(
          children: [
            LinearPercentIndicator(
              width: widget.width * 0.68,
              lineHeight: widget.height * 0.015,
              animationDuration: 600,
              percent: 0.6,
              barRadius: Radius.circular(10),
              linearGradient: LinearGradient(colors: [
                Color.fromARGB(255, 173, 118, 255),
                Color.fromARGB(255, 216, 182, 255),
              ]),
            ),
            Text('58%'),
          ],
        ),
        SizedBox(
          height: widget.height * 0.04,
        ),
      ],
    );

    return Container(
      padding: EdgeInsets.only(
          top: widget.height * 0.015,
          left: widget.width * 0.035,
          right: widget.width * 0.035),
      child: Column(children: [
        Text(
          'RECOMENDATION',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(
          height: widget.height * 0.03,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () => setState(() {
                if (filter == false) {
                  filter = true;
                } else {
                  filter = false;
                }
              }),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 190, 190, 190)),
                  color: Color.fromARGB(255, 235, 235, 235),
                ),
                child: Icon(
                  Icons.filter_list_rounded,
                  color: Color.fromARGB(255, 61, 61, 61),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    searchstring,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 207, 207, 207)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  width: widget.width * 0.55,
                  lineHeight: widget.height * 0.02,
                  animationDuration: 600,
                  percent: 0.6,
                  barRadius: Radius.circular(10),
                  linearGradient: LinearGradient(colors: [
                    Colors.greenAccent,
                    Colors.lightGreenAccent,
                  ]),
                ),
                SizedBox(
                  height: widget.height * 0.015,
                )
              ],
            ),
            SizedBox(
              width: 8.5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '60%',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
        filter
            ? Container(
                margin: EdgeInsets.only(
                    top: widget.height * 0.015, bottom: widget.height * 0.02),
                height: widget.height * 0.05,
                width: widget.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () => setState(
                        () {
                          searchstring = 'Html';
                        },
                      ),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'Html',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        searchstring = 'CSS';
                      }),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'CSS',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        searchstring = 'MongoDB';
                      }),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'MongoDB',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        searchstring = 'Express';
                      }),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'Express',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        searchstring = 'Spring';
                      }),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'Spring',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        searchstring = 'NodeJS';
                      }),
                      child: searchcat(
                        width: widget.width,
                        height: widget.height,
                        searchterm: 'NodeJS',
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(),
        Expanded(
          child: ListView(
            children: [chart, chart],
          ),
        )
      ]),
    );
  }
}
