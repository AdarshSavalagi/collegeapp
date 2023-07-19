import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/Screens/feedback.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:url_launcher/url_launcher.dart';

// TODO: social links pending

class contactScreen extends StatefulWidget {
  const contactScreen({Key? key}) : super(key: key);

  @override
  State<contactScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<contactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: "Contact us"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Suggestions",
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900)),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const feedback()));
                },
                child: const contactcards(
                  icon: Icons.email,
                  title: "Provide feedback",
                  description:
                      "Your suggestions are important and help us improve our products. If you need help now, please feel free to contact us",
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact Us",
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900)),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // adding some properties
                  showModalBottomSheet(
                    context: context,
                    //background color for modal bottom screen
                    backgroundColor: Colors.white,
                    //elevates modal bottom screen
                    elevation: 10,
                    // gives rounded corner to modal bottom screen
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    builder: (BuildContext context) {
                      // UDE : SizedBox instead of Container for whitespaces
                      return SizedBox(
                          height: 250,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Srinivas Institute of Technology",
                                    style: GoogleFonts.getFont('Varela Round',
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900))),
                              ),
                              Text("Valachil Mangalore 574-143.",
                                  style: GoogleFonts.getFont('Varela Round',
                                      textStyle:
                                          const TextStyle(fontSize: 16))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Email:",
                                        style: GoogleFonts.getFont(
                                            'Varela Round',
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900))),
                                    TextButton(
                                        onPressed: () async {
                                          final url = Uri.parse(
                                              'mailto:prinipalsit@gmail.com');
                                          if (!await launchUrl(
                                            url,
                                            mode:
                                                LaunchMode.externalApplication,
                                          )) {
                                            throw Exception(
                                                'Could not launch $url');
                                          }
                                        },
                                        child: Text("prinipalsit@gmail.com",
                                            style: GoogleFonts.getFont(
                                                'Varela Round',
                                                textStyle: const TextStyle(
                                                  fontSize: 15,
                                                ))))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text("Call:",
                                        style: GoogleFonts.getFont(
                                            'Varela Round',
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900))),
                                    TextButton(
                                        onPressed: () async {
                                          final url =
                                              Uri.parse('tel:+91-6366410494');
                                          if (!await launchUrl(
                                            url,
                                            mode:
                                                LaunchMode.externalApplication,
                                          )) {
                                            throw Exception(
                                                'Could not launch $url');
                                          }
                                        },
                                        child: Text("+91 6366410494",
                                            style: GoogleFonts.getFont(
                                                'Varela Round',
                                                textStyle: const TextStyle(
                                                  fontSize: 15,
                                                ))))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text("For Technical issues only:",
                                        style: GoogleFonts.getFont(
                                            'Varela Round',
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900))),
                                    TextButton(
                                        onPressed: () async {
                                          final url = Uri.parse(
                                              'mailto:srinivasinstitute@gmail.com');
                                          if (!await launchUrl(
                                            url,
                                            mode:
                                                LaunchMode.externalApplication,
                                          )) {
                                            throw Exception(
                                                'Could not launch $url');
                                          }
                                        },
                                        child: SizedBox(
                                          width: 95,
                                          child: Text(
                                              "srinivasinstitute@gmail.com",
                                              style: GoogleFonts.getFont(
                                                  'Varela Round',
                                                  textStyle: const TextStyle(
                                                      fontSize: 15,
                                                      overflow: TextOverflow
                                                          .ellipsis))),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                  );
                },
                child: const contactcards(
                  icon: Icons.call,
                  title: "Speak with a representative",
                  description:
                      "If you require any further information, please feel free to reach out to me.",
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final url = Uri.parse('mailto:srinivasinstitute@gmail.com');
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: const contactcards(
                  icon: Icons.send,
                  title: "Email us",
                  description:
                      "Tell us a little about your issue and we'll email you back",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Connect with Us",
              style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900)),
            ),
          ),
          contactcards(
            title: 'Facebook',
            description: 'connect with us on Facebook',
            icon: Icons.facebook,
          ),
          contactcards(
            title: 'Youtube',
            description: 'connect with us on Youtube',
            icon: Icons.youtube_searched_for_sharp,
          ),
          contactcards(
            title: 'Instagram',
            description: 'connect with us on Instagram',
            icon: Icons.youtube_searched_for_sharp,
          ),
        ],
      ),
    );
  }
}
