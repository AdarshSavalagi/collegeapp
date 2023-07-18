import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';
// TODO: Alumni page is pending
class AlumniScreen extends StatefulWidget {
  const AlumniScreen({Key? key}) : super(key: key);

  @override
  State<AlumniScreen> createState() => _AlumniScreenState();
}

class _AlumniScreenState extends State<AlumniScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: APPBAR(title: 'Alumni'),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
