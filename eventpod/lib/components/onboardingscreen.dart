import 'package:eventpod/login_cred/mlog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboard extends StatefulWidget {
  onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  final page = LiquidController();

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            slideIconWidget: Icon(Icons.arrow_back_ios),
            // enableLoop: false,
            // enableSideReveal: true,
            liquidController: page,
            onPageChangeCallback: onPageChangedCallback,
            pages: [
              Container(
                height: height,
                width: width,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.4,
                      left: width * 0.5,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(15 / 360),
                        child: Container(
                          height: 600,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 218, 224, 227),
                              shape: BoxShape.circle),
                          margin: EdgeInsets.only(top: height * 0.15),
                          // child: Image.asset(
                          //   'assets/logo.png',
                          // ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: height * 0.45,
                      right: width * 0.3,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(30 / 360),
                        child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 218, 224, 227),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(250))),

                          margin: EdgeInsets.only(top: height * 0.15),
                          // child: Image.asset(
                          //   'assets/logo.png',
                          // ),
                        ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  top: height * 0.4, left: width * 0.28),
                              child: Text(
                                "WELCOME TO",
                                style: TextStyle(
                                    fontSize: height * 0.022,
                                    color: Colors.black26),
                              )),
                          Container(
                              margin:
                                  EdgeInsets.only(left: width * 0.27, top: 10),
                              child: Text(
                                "EVENTPOD",
                                style: TextStyle(
                                    fontSize: height * 0.045,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              )),
                        ]),
                  ],
                ),
              ),
              Container(
                width: width,
                color: Color.fromARGB(255, 230, 243, 231),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.37,
                        margin: EdgeInsets.only(top: height * 0.14),
                        child: Lottie.asset("assets/ob2.json"),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: height * 0.07, bottom: height * 0.02),
                          child: Text(
                            "Easy and Simple UI!",
                            style: TextStyle(
                                fontSize: height * 0.041,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.045),
                          child: Text(
                            "Everything is developed in a imple yet intriguing way to promote aesthetic and professionality",
                            style: TextStyle(
                              fontSize: height * 0.022,
                              color: Colors.black38,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ]),
              ),
              Container(
                width: width,
                color: Color.fromARGB(255, 227, 234, 244),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.36,
                        margin: EdgeInsets.only(top: height * 0.14),
                        child: Lottie.asset("assets/ob3.json"),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: height * 0.07, bottom: height * 0.02),
                          child: Text(
                            "Be Productive!",
                            style: TextStyle(
                                fontSize: height * 0.041,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.045),
                          child: Text(
                            "Maximize your productivity by analyzing your skills and get latest updates of all the events around you",
                            style: TextStyle(
                              fontSize: height * 0.022,
                              color: Colors.black38,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ]),
              )
            ],
          ),
          Positioned(
            // left: width * 0.4,
            bottom: height * 0.1,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => mlog()));
              },
              child: Container(
                padding: EdgeInsets.all(height * 0.02),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(height * 0.017),
                  onPrimary: Colors.black12),
            ),
          ),
          Positioned(
              top: height * 0.07,
              right: width * 0.03,
              child: TextButton(
                onPressed: () {
                  page.jumpToPage(page: 2);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black54),
                ),
              )),
          // Positioned(...),
          Positioned(
              bottom: height * 0.04,
              child: AnimatedSmoothIndicator(
                activeIndex: page.currentPage,
                count: 3,
                effect: WormEffect(
                    activeDotColor: Colors.black, dotHeight: height * 0.01),
              ))
        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentpage = activePageIndex;
    });
  }
}
