import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: APPBAR(title: "Departments"),
      
    );
  }
}