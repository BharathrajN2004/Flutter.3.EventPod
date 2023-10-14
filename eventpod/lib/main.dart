// ignore_for_file: prefer_const_constructors, camel_case_types

//flutter imports
import 'package:eventpod/components/onboardingscreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '/login_cred/mlog.dart';
import 'package:flutter/material.dart';

//routing imports
import 'class/edtail.dart';
import 'hometry.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(edtailAdapter());
  // await Hive.openBox<edtail>('registered');
  // await Hive.openBox<edtail>('analyzer');

  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboard(),
    );
  }
}
