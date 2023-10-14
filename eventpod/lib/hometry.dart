// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, camel_case_types, unused_local_variable, use_key_in_widget_constructors, override_on_non_overriding_member, prefer_typing_uninitialized_variables

import 'dart:io';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

import 'mainpages/home.dart';
import 'mainpages/aimodel.dart';
import 'mainpages/recomendation.dart';
import 'mainpages/registered.dart';
import 'mainpages/search.dart';
import 'package:flutter/material.dart';

import 'webscraping.dart';

class hometry extends StatefulWidget {
  const hometry({super.key});

  @override
  State<hometry> createState() => _hometryState();
}

class _hometryState extends State<hometry> with SingleTickerProviderStateMixin {
  // // required for department form login page
  // var department = 'CSE';

  // // stratdate list
  // var startdate = [];
  // // end date list
  // var enddate = [];
  // // event name list
  // var event_name = [];
  // // event information
  // var event_info = [];
  // // collage name list
  // var college_name = [];
  // // link for detail of an event
  // var link = [];
  // // event image list
  // var imglist = [];
  // //  sub events list
  // var allevent_list = [];
  // // fees
  // var fees = [];
  // // event mode
  // var event_mode = [];
  // // contack details
  // var contact_details = [];
  // // registration link
  // var reglink = [];
  // // for some events ppt topics
  // var ppt_topics = [];
  // // event gests
  // var guests = [];
  // // registration last date
  // var reg_last_date = [];
  // // location
  // var location = [];
  //

  Color light = Colors.grey;
  Color dark = Colors.black;
  var bottom_string = 'home';

  late final AnimationController controller =
      AnimationController(duration: Duration(seconds: 2), vsync: this)
        ..repeat();

  @override
  void setState(VoidCallback fn) {
    // ignore: todo
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
    // webscraping(
    //         department,
    //         startdate,
    //         enddate,
    //         event_name,
    //         event_info,
    //         college_name,
    //         link,
    //         imglist,
    //         allevent_list,
    //         fees,
    //         event_mode,
    //         contact_details,
    //         reglink,
    //         ppt_topics)
    //     .fetchdata();
    // Webscraping(
    //     startdate, event_name, college_name, link, imglist, allevent_list);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () {
        if (bottom_string == 'home') {
          exit(0);
        } else {
          setState(() {
            bottom_string = 'home';
          });
          throw '';
        }
      },
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: MediaQuery.of(context).viewPadding.top + height * 0.02,
              bottom: height * 0.02),
          child: Column(children: [
            // top bar

            Expanded(
                child: bottom_string == 'home'
                    ? home(height: height, width: width)
                    : bottom_string == 'regis'
                        ? registered(
                            height: height,
                            width: width,
                          )
                        : bottom_string == 'search'
                            ? search(
                                height: height,
                                width: width,
                              )
                            : bottom_string == 'recom'
                                ? recomendation(
                                    height: height,
                                    width: width,
                                  )
                                : bottom_string == 'aimodel'
                                    ? aimodel(
                                        height: height,
                                        width: width,
                                      )
                                    : Container()),

            // bottom nav bar
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 228, 228, 228)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(26)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottom_gesture('aimodel', Icons.psychology_rounded),
                    bottom_gesture('recom', Icons.insights_rounded),
                    bottom_gesture('home', Icons.home_rounded),
                    bottom_gesture('search', Icons.search_rounded),
                    bottom_gesture('regis', Icons.grid_view_rounded),
                  ],
                )),
          ]),
        ),
      ),
    );
  }

  GestureDetector bottom_gesture(string, icon) {
    return GestureDetector(
        onTap: () => setState(() {
              bottom_string = string;
            }),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Transform.scale(
              scale: bottom_string == string ? 1.2 : 1,
              child: Icon(
                icon,
                shadows: bottom_string == string
                    ? [
                        Shadow(
                            color: Color.fromARGB(255, 197, 197, 197),
                            blurRadius: 40,
                            offset: Offset(0, -2))
                      ]
                    : [],
                color: bottom_string == string
                    ? Color.fromRGBO(0, 0, 0, 0.65)
                    : Colors.grey,
              )),
        ));
  }
}
