import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/Screens/privacy.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'maps.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}
// TODO: About Srinivas group page is pending: https://www.sitmng.ac.in/SIT/About/About-Srinivas-Group
class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const APPBAR(title: "About Us"),

    );
  }
}
