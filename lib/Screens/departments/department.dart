import 'package:flutter/material.dart';

class Department {
  String name;
  IconData icon;
  Overview overview;
  Association association;
  List<Faculty> faculty;
  Department(
      {required this.name,
      required this.faculty,
      required this.icon,
      required this.overview,
      required this.association
      });
}

class Association {
  String logo;
  List<Faculty> faculty;
  Association({required this.faculty, required this.logo});
}

class Overview {
  Overview(
      {required this.mission,
      required this.overview,
      required this.peos,
      required this.po,
      required this.pso,
      required this.vision});
  String overview;
  String vision;
  List<String> mission;
  List<String> peos;
  List<String> pso;
  List<String> po;
}

class Faculty {
  String name;
  String photo;
  String designation;
  String qualification;
  String email;
  Faculty(
      {required this.name,
      required this.qualification,
      required this.designation,
      required this.email,
      required this.photo});
}
