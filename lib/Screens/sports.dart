import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';
// TODO: Sports page is pending
class SportsScreen extends StatefulWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: APPBAR(title: 'Sports'),

    );
  }
}
