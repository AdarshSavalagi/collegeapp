import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';

import '../supportings/library_model.dart';


class libraryScreen extends StatefulWidget {
  const libraryScreen({Key? key}) : super(key: key);

  @override
  State<libraryScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<libraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: const APPBAR(title: "Library"),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('E-Books',  style: GoogleFonts.getFont(
                'Varela Round',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: [
                LibCard(libraryModel: objs[0],),
                LibCard(libraryModel: objs[1],),
                LibCard(libraryModel: objs[2],),
              ],
            ),
            Row(
              children: [
                LibCard(libraryModel: objs[3],),
                LibCard(libraryModel: objs[4],),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Question Papers',  style: GoogleFonts.getFont(
                'Varela Round',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: [
                    LibCard(libraryModel: objs[5],),
                    LibCard(libraryModel: objs[6],),
                    LibCard(libraryModel: objs[7],),
              ],
            ),
            Row(
              children: [
                LibCard(libraryModel: objs[8],),
                LibCard(libraryModel: objs[9],),
              ],
            ),

          ],
        ),
    );
  }
}
