import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/Screens/privacy.dart';
import 'package:newuisit/supportings/supporting.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const APPBAR(title: "Community"),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Version",
                      style: GoogleFonts.getFont(
                        'Varela Round',
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 19),
                      )),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "1.0.001",
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  child: Text(
                    "Srinivas Institute of Technology for Android software ©. All rights reserved. Srinivas Institute of Technology and the SIT-Mangaluru logo are trademarks of sitmng.ac.in, Inc. or its affiliates",
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextButton(
                onPressed:()  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const privacyscreen()),
                  );
                },
                child: Text(
                  "Terms and Privacy Notice",
                  style: GoogleFonts.getFont(
                    'Varela Round',
                    textStyle:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                  ),
                )),
          ]),
        ],
      ),
    );
  }
}
