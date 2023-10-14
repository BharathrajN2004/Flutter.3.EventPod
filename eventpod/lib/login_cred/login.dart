// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  final height;
  final width;

  const login({super.key, required this.height, required this.width});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              top:
                  MediaQuery.of(context).viewPadding.top + widget.height * 0.03,
              left: widget.width * 0.09,
              right: widget.width * 0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: widget.width * 0.125,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 234),
                    border:
                        Border.all(color: Color.fromARGB(255, 191, 191, 191)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Icon(Icons.arrow_back_rounded)),
                ),
              ),
              SizedBox(height: widget.height * 0.03),
              Container(
                width: widget.width * 0.7,
                // margin: EdgeInsets.only(left: widget.width * 0.03),
                child: Text(
                  'Welcome Back! Glad to see you, Again!'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Junge',
                      // leadingDistribution: TextLeadingDistribution.proportional,
                      wordSpacing: 6,
                      fontSize: 26,
                      color: Color.fromARGB(255, 53, 53, 53)),
                ),
              ),
              SizedBox(
                height: widget.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: widget.width * 0.05,
                          vertical: widget.height * 0.01),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        border:
                            Border.all(color: Color.fromARGB(255, 80, 80, 80)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'ORGANISORS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Acme'),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: widget.width * 0.05,
                  ),
                  GestureDetector(
                    child: Container(
                      // width: widget.width * 0.125,
                      padding: EdgeInsets.symmetric(
                          horizontal: widget.width * 0.05,
                          vertical: widget.height * 0.01),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 234, 234, 234),
                        border: Border.all(
                            color: Color.fromARGB(255, 191, 191, 191)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                        'STUDENTS',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Acme'),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: widget.height * 0.05,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 53, 53, 53)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15),
                  hintText: 'ENTER YOUR EMAIL',
                  // counterText: 'fghgfh',
                  // counterStyle: TextStyle(color: Colors.blue),
                  hintStyle: TextStyle(
                      letterSpacing: 1.5,
                      wordSpacing: 3,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 169, 169, 169)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 78, 78, 78), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 155, 155, 155)),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                height: widget.height * 0.02,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 53, 53, 53)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15),
                  hintText: 'ENTER YOUR PASSWORD',

                  // counterText: 'fghgfh',
                  // counterStyle: TextStyle(color: Colors.blue),
                  hintStyle: TextStyle(
                      letterSpacing: 1.5,
                      wordSpacing: 3,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 169, 169, 169)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 78, 78, 78), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 155, 155, 155)),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                height: widget.height * 0.04,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'Forget the Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 190, 152, 252)),
                  ),
                ],
              ),
              SizedBox(
                height: widget.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 3,
                    width: widget.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.grey])),
                  ),
                  Text(
                    'OR LOGIN WITH',
                    style: TextStyle(
                        fontFamily: 'Acme', fontSize: 14, color: Colors.grey),
                  ),
                  Container(
                    height: 3,
                    width: widget.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            colors: [Colors.grey, Colors.white])),
                  )
                ],
              ),
              SizedBox(
                height: widget.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: widget.height * 0.08,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset('assets/images/google.png'),
                  ),
                ],
              ),
              SizedBox(
                height: widget.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an Account?  ',
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    child: Text(
                      'Signin',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 190, 152, 252),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Acme'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
