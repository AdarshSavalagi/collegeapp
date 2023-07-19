import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:url_launcher/url_launcher.dart';

class DepartmentFacultyScreen extends StatefulWidget {
  const DepartmentFacultyScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentFacultyScreen> createState() =>
      _DepartmentFacultyScreenState();
}

class _DepartmentFacultyScreenState extends State<DepartmentFacultyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: 'Faculties'),
      body: ListView(
        children: [
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
          FacultyCard(),
        ],
      ),
    );
  }
}

class FacultyCard extends StatelessWidget {
  const FacultyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,

            isScrollControlled: true,
            backgroundColor: Colors.white,
            //elevates modal bottom screen
            elevation: 10,
            // gives rounded corner to modal bottom screen
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (BuildContext context) {
              // UDE : SizedBox instead of Container for whitespaces
              return FractionallySizedBox(
                  heightFactor: 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            image: CachedNetworkImageProvider(
                              'https://srinivasuniverstrg.blob.core.windows.net/sit-faculty-images/Dr%20Anoop%20B%20K.jpg',
                              maxHeight: 80,
                              maxWidth: 80,
                            ),
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Text(
                        'Dr.Anoop B K',
                        style: GoogleFonts.getFont('Varela Round',
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Head of Department',
                          style: GoogleFonts.getFont('Varela Round',
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                 color:Colors.red
                            ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Text(
                            "AIML",
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Head of Department Artificial Intelligence and Machine Learning, SIT',
                          style: GoogleFonts.getFont('Varela Round',
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18),),textAlign: TextAlign.center,
                        ),
                      ),




                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green
                          ),
                          child: GestureDetector(

                              onTap: () async {
                                final url =
                                Uri.parse('mailto:adarshsavaligi@gmail.com');
                                if (!await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                                )) {
                              throw Exception('Could not launch $url');
                              }

                            },
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Icon(Icons.mail_outline_outlined,color: Colors.white,),
                            ),
                          ),
                        ),
                      )
                    ],
                  ));
            },
          );
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                    image: CachedNetworkImageProvider(
                      'https://srinivasuniverstrg.blob.core.windows.net/sit-faculty-images/Dr%20Anoop%20B%20K.jpg',
                      maxHeight: 80,
                      maxWidth: 80,
                    ),
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 222,
                          child: Text(
                            "Dr. Anoop B K ",
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 222,
                          child: Text(
                            "Head of Department ",
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                )),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 222,
                          child: Text(
                            "AIML",
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(
                                  color: Colors.black54,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.link,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
