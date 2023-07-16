// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:newuisit/supportings/supporting.dart';


class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime(2022);
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: "Events"),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                calendarFormat: _calendarFormat,
                currentDay: _focusedDay,
                focusedDay: _focusedDay,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                 firstDay: DateTime(2022),
              lastDay: _focusedDay,
              ),




            ],
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 19),
          child: Text("Events",
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          ),
              Eventcards(),
              Eventcards(),
              Eventcards(),
              Eventcards(),
              Eventcards(),
              Eventcards(),
              Eventcards(),
        ],
      ),
    );
  }
}
