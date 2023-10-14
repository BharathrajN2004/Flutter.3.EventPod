// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, unnecessary_brace_in_string_interps, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/homepage/eventcard.dart';
import '../components/searchcat.dart';

class search extends StatefulWidget {
  final height;
  final width;

  search({required this.height, required this.width});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  var start = 0;

  var eventname = 'Event Name bharathrajN';

  var imagepath =
      'https://www.knowafest.com/files/uploads/Tecblaze%20Logo2-2023011806.png';

  var collegename = 'Sri Sairam Institute Of Technology';

  var startdate = '09.07.2023';

  var enddate = '27.08.2023';
  String searchstring = '';
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
      ],
    );

    return Container(
      padding: EdgeInsets.only(
          top: widget.height * 0.015,
          left: widget.width * 0.035,
          right: widget.width * 0.035),
      child: Column(
        children: [
          Text(
            'SEARCH',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: widget.width * 0.18,
              ),
              Text(
                searchstring,
                style: TextStyle(
                    color: Color.fromARGB(255, 202, 202, 202),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: widget.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    border:
                        Border.all(color: Color.fromARGB(255, 190, 190, 190)),
                    color: Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: Color.fromARGB(255, 61, 61, 61),
                  ),
                ),
              ),
              SizedBox(
                // height: height * 0.,
                width: widget.width * 0.65,
                child: TextField(
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 53, 53, 53)),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'SEARCH',
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(
                        letterSpacing: 1.5,
                        wordSpacing: 3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 169, 169, 169)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 78, 78, 78), width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 155, 155, 155)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
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
                        onTap: () => setState(() {
                          searchstring = 'College Name';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'College Name',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          searchstring = 'Location';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'Location',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          searchstring = 'Event Name';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'Event Name',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          searchstring = 'Certification';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'Certification',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          searchstring = 'Event Mode';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'Event Mode',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          searchstring = 'Fees';
                        }),
                        child: searchcat(
                          width: widget.width,
                          height: widget.height,
                          searchterm: 'Fees',
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: widget.height * 0.012),
            child: ListView(
              children: [
                chart,
                SizedBox(
                  height: widget.height * 0.04,
                ),
                chart
              ],
            ),
          ))
        ],
      ),
    );
  }
}
