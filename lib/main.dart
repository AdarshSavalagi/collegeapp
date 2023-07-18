import 'package:flutter/material.dart';
import 'package:newuisit/Screens/HomePage.dart';
import 'package:newuisit/Screens/gallery.dart';
import 'package:newuisit/Screens/joinus.dart';
import 'Screens/SplashScreen.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:newuisit/Screens/temp.dart';

import 'Screens/library.dart';


void main() {

  final MaterialColor primarySwatch = createMaterialColor(const Color(0xFF24245E));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: primarySwatch
    ),
    home: HomePage(),
  ));
}

