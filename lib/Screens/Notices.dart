import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';

class noticesScreen extends StatefulWidget {
  const noticesScreen({super.key});

  @override
  State<noticesScreen> createState() => _noticesScreenState();
}

class _noticesScreenState extends State<noticesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:APPBAR(title: "Notices",),
body: ListView(
  children: const [
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description: 'All student are supposed to pay VTU Examination fee by this saturday All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description:  'All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description:  'All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description:  'All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description:  'All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
    NoticeCard(title: "Exam Fee", date: '02-05-2023', description:  'All student are supposed to pay VTU Examination fee by this saturday', link: 'www.google.com',),
  ],
),
    );
  }
}