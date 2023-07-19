import 'package:flutter/material.dart';

import '../../supportings/supporting.dart';

class DepartmentNoticesScreen extends StatefulWidget {
  const DepartmentNoticesScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentNoticesScreen> createState() => _DepartmentNoticesScreenState();
}

class _DepartmentNoticesScreenState extends State<DepartmentNoticesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title:'Notices'),
      body: ListView(
        children: [
          NoticeCard(title: 'Submit your Assignment', date: '05/06/2003', description: '(NAAC ACCREDITED, AFFILIATED TO VTU, BELGAVI AND RECOGNIZED BY THE AICTE, NEW DELHI)', link: '',),
          NoticeCard(title: 'Submit your Assignment', date: '05/06/2003', description: '(NAAC ACCREDITED, AFFILIATED TO VTU, BELGAVI AND RECOGNIZED BY THE AICTE, NEW DELHI)', link: '',),
          NoticeCard(title: 'Submit your Assignment', date: '05/06/2003', description: '(NAAC ACCREDITED, AFFILIATED TO VTU, BELGAVI AND RECOGNIZED BY THE AICTE, NEW DELHI)', link: '',),
        ],
      ),
    );
  }
}
