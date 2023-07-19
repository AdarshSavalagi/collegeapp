import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:newuisit/Screens/departments/department.dart';

class OverView extends StatefulWidget {
  const OverView({super.key, required this.overview});
  final Overview overview;
  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: APPBAR(title: 'Overview '),
      body: ListView(
        children: [
          Text(widget.overview.overview,
              textAlign: TextAlign.justify,
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                    fontSize: 15
                  ))),
          Text(
            'Vision',
            style: GoogleFonts.getFont('Varela Round',
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                )),
            textAlign: TextAlign.justify,
          ),

           Text(widget.overview.vision,
              textAlign: TextAlign.justify,
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                    fontSize: 15
                  ))),


                  

        ],
      ),
    );
  }
}
