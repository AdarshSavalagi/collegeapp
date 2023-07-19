import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// TODO: Department page is pending
class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: "Departments"),
      body:GridView.count(
        
        crossAxisCount: 2,
        children: [
          NewCard(title: 'Aeronautical Engineering', icon: FontAwesomeIcons.planeDeparture),
          NewCard(title: 'Artificial Intelligence & Machine Learning', icon: FontAwesomeIcons.brain),
          NewCard(title: 'Artificial Intelligence & Data Science', icon: FontAwesomeIcons.server),
          NewCard(title: 'Computer Science Engineering', icon: FontAwesomeIcons.computer),
          NewCard(title: 'Computer Science & Design', icon: FontAwesomeIcons.computer),
          NewCard(title: 'Computer Science & Business Studies', icon: FontAwesomeIcons.computer),
          NewCard(title: 'Electronics & Communication Engineering', icon: FontAwesomeIcons.computer),
          NewCard(title: 'Electronics & Communication Engineering', icon: FontAwesomeIcons.microchip),
          NewCard(title: 'Mechanical Engineering', icon: FontAwesomeIcons.gears),
          NewCard(title: 'Information Science & Engineering', icon: FontAwesomeIcons.laptopCode),
          NewCard(title: 'Automobile Engineering', icon: FontAwesomeIcons.car),
          NewCard(title: 'Marine Engineering', icon: FontAwesomeIcons.ship),
        ],
      )
    );
  }
}



