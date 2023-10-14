// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sort_child_properties_last

import 'package:eventpod/class/edtail.dart';
import 'package:eventpod/mainpages/home.dart';
import 'package:hive/hive.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '/components/homepage/myhero.dart';
import 'package:flutter/material.dart';

class detailevent extends StatefulWidget {
  final imgpath;
  final eventname;
  final startdate;
  final enddate;
  final collagename;
  final event_mode;
  final aboutevent;
  final fees;
  final certi_detail;
  final contact;
  final location;
  final skilllist;

  detailevent({
    required this.imgpath,
    required this.eventname,
    required this.startdate,
    required this.enddate,
    required this.collagename,
    required this.event_mode,
    required this.aboutevent,
    required this.fees,
    required this.certi_detail,
    required this.contact,
    required this.location,
    required this.skilllist,
  });

  @override
  State<detailevent> createState() => _detaileventState();
}

class _detaileventState extends State<detailevent> {
  // late final AnimationController controller =
  //     AnimationController(duration: Duration(seconds: 2), vsync: this)
  //       ..repeat();

  // @override
  // void dispose() {
  //   Hive.box('analyzer').close();

  //   super.dispose();
  // }

  var ai_color = Colors.white;
  late edtail ecard;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + height * 0.02,
              left: width * 0.05,
              right: width * 0.05),
          color: Color.fromARGB(255, 245, 245, 245),
          child: Column(
            children: [
              myhero(
                tag: widget.imgpath,
                child: Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(width * 0.04),
                    image: DecorationImage(
                        image: AssetImage('assets/images/209210.jpg'),
                        fit: BoxFit.cover),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(94, 205, 205, 205),
                                  border: Border.all(color: Colors.white24),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => setState(
                              () {
                                if (ai_color == Colors.white) {
                                  ai_color = Color.fromARGB(255, 187, 255, 211);
                                  // ecard = edtail()
                                  //   ..eventname = widget.eventname
                                  //   ..startdate = widget.startdate
                                  //   ..enddate = widget.enddate
                                  //   ..collegename = widget.collagename
                                  //   ..image = widget.imgpath
                                  //   ..skillslist = widget.skilllist;
                                  // setState(() {
                                  //   final box = Hive.box<edtail>('analyzer');
                                  //   box.add(ecard);
                                  //   print(box);
                                  // });
                                } else {
                                  // setState(() {
                                  //   ecard.delete();
                                  //   print('deleted');
                                  // });

                                  ai_color = Colors.white;
                                }
                              },
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  // color: Color.fromARGB(94, 205, 205, 205),
                                  // border: Border.all(color: Colors.white24),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.auto_awesome_rounded,
                                color: ai_color,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(94, 205, 205, 205),
                                  border: Border.all(color: Colors.white24),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                widget.event_mode == 'online'
                                    ? Icons.wifi
                                    : Icons.wifi_off_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              myhero(
                tag: widget.eventname,
                child: Text(
                  widget.eventname,
                  style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Start Date',
                        style: TextStyle(
                            // backgroundColor: Colors.red,
                            fontSize: width * 0.035,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      myhero(
                          tag: 'startdate',
                          child: Text(
                            widget.startdate,
                            style: TextStyle(
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'End Date',
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      myhero(
                          tag: 'enddate',
                          child: Text(
                            widget.enddate,
                            style: TextStyle(
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              myhero(
                tag: 'college',
                child: Text(
                  widget.collagename,
                  style: TextStyle(
                      fontSize: width * 0.05, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          )),
    );
  }
}

// class fadeanimater extends StatelessWidget {
//   const fadeanimater({required this.animation, required this.child});

//   final animation;
//   final child;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animation,
//       builder: (context, child) => FadeTransition(
//         opacity: CurvedAnimation(
//             curve: Interval(0.2, 1, curve: Curves.easeInExpo),
//             parent: animation),
//         child: child,
//       ),
//     );
//   }
// }

