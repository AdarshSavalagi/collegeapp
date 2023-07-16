import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({super.key});

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:const APPBAR(title: "Holidays",),
body: ListView(
  children: const [
    HolidayCard(),
    HolidayCard(),
    HolidayCard(),
    HolidayCard(),
    HolidayCard(),
    HolidayCard(),
  ],
),
    );
  }
}