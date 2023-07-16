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
        appBar: APPBAR(title: "Library"),
        body: ListView(
          children: [
            Column(
              children: [
                // LibCard(),
              ],
            )
          ],
        ),
    );
  }
}
