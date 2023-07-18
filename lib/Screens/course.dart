import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../supportings/supporting.dart';

// TODO: onclick next page is pending

class coursepage extends StatefulWidget {
  const coursepage({Key? key}) : super(key: key);

  @override
  State<coursepage> createState() => _coursepageState();
}

class _coursepageState extends State<coursepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title:"Courses"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Undergraduate Programmes:",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
              fontWeight: FontWeight.w900,fontSize: 20
            )),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BulletedList(
                boxShape: BoxShape.circle,
                bullet: const Icon(Icons.star_border_rounded),
                crossAxisAlignment: CrossAxisAlignment.start,
                listItems: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Artificial Intelligence Machine Learning ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                            fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Artificial Intelligence and Data Science",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Information science Engineernig",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Electronics and Communication Engineering ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Electronics & Electrical Engineering ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),

                ],
                listOrder: ListOrder.ordered,
              ),
            ],
          ),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Postgraduate Programmes:",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                fontWeight: FontWeight.w900,fontSize: 20
            )),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BulletedList(
                boxShape: BoxShape.circle,
                bullet: const Icon(Icons.star_border_rounded),
                crossAxisAlignment: CrossAxisAlignment.start,
                listItems: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Artificial Intelligence  ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Electronics & Electrical Engineering ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Electronics & Electrical Engineering ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Mechanical Engineering ",style: GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(
                          fontWeight: FontWeight.w900,fontSize: 15)),)),
                    ],
                  ),
                ],
                listOrder: ListOrder.ordered,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
