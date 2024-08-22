import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:math_app/Home.dart';
import 'package:math_app/Start.dart';
import 'package:math_app/About.dart';
import 'package:math_app/Contact.dart';
import 'package:math_app/Stats.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/Start': (context) => Start(),
      '/About': (context) => About(),
      '/Contact': (context) => Contact(),
      '/Stats': (context) => Stats(),
    },
  ));
}
