// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../components/homepage/eventcard.dart';

class registered extends StatefulWidget {
  final height;
  final width;

  registered({required this.height, required this.width});

  @override
  State<registered> createState() => _registeredState();
}

class _registeredState extends State<registered> {
  var eventname = 'Event Name bharathrajN';

  var imagepath =
      'https://www.knowafest.com/files/uploads/Tecblaze%20Logo2-2023011806.png';

  var collegename = 'Sri Sairam Institute Of Technology';

  var startdate = '09.07.2023';

  var enddate = '27.08.2023';

  String searchstring = 'Match Percentage';

  bool filter = false;

  var sindex = 0;

  @override
  Widget build(BuildContext context) {
    List<chartdata> chartdatalist = [
      chartdata(ename: 'e1', value: 3),
      chartdata(ename: 'e2', value: 6),
      chartdata(ename: 'e3', value: 7),
      chartdata(ename: 'e4', value: 10),
      chartdata(ename: 'e5', value: 13),
      chartdata(ename: 'e6', value: 19),
    ];
    var chart = [
      eventcard(
          height: widget.height,
          width: widget.width,
          startdate: startdate,
          imagepath: imagepath,
          eventname: eventname,
          enddate: enddate,
          collegename: collegename),
      eventcard(
          height: widget.height,
          width: widget.width,
          startdate: startdate,
          imagepath: imagepath,
          eventname: eventname,
          enddate: enddate,
          collegename: collegename),
      eventcard(
          height: widget.height,
          width: widget.width,
          startdate: startdate,
          imagepath: imagepath,
          eventname: eventname,
          enddate: enddate,
          collegename: collegename),
      eventcard(
          height: widget.height,
          width: widget.width,
          startdate: startdate,
          imagepath: imagepath,
          eventname: eventname,
          enddate: enddate,
          collegename: collegename),
    ];
    return Container(
      padding: EdgeInsets.only(
          top: widget.height * 0.015,
          left: widget.width * 0.035,
          right: widget.width * 0.035),
      child: Column(
        children: [
          Text(
            'REGISTERED EVENTS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(top: widget.height * 0.01),
            height: widget.height * 0.2,
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.98),
                itemCount: chart.length,
                onPageChanged: (value) {
                  setState(() {
                    sindex = value;
                  });
                },
                itemBuilder: (context, index) {
                  var scale = sindex == index ? 1 : 0.8;
                  return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 550),
                    child: chart[index],
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: double.parse(value.toString()),
                        child: child,
                      );
                    },
                  );
                }),
          ),
          Expanded(
              flex: 2,
              child: Container(
                width: widget.width,
                // color: Colors.red,
                margin: EdgeInsets.only(top: widget.height * 0.015),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Events Tracker',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: widget.height * 0.01,
                      ),
                      SfCartesianChart(
                        series: <ChartSeries>[
                          BarSeries<chartdata, String>(
                            dataSource: chartdatalist,
                            xValueMapper: (chartdata d, _) => d.ename,
                            yValueMapper: (chartdata d, index) => d.value,
                          ),
                        ],
                        borderColor: Colors.transparent,
                        primaryXAxis: CategoryAxis(),
                        primaryYAxis: NumericAxis(
                            edgeLabelPlacement: EdgeLabelPlacement.shift),
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}

class chartdata {
  final String ename;
  final value;

  chartdata({required this.ename, required this.value});
}
