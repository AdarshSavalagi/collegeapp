import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/Screens/feedback.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:url_launcher/url_launcher.dart';

// TODO: social links pending

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<ContactScreen> {
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
                child: const ContactCard(
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
                child: const ContactCard(
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
                child: const ContactCard(
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
          GestureDetector(
            onTap: () async {
              final url = Uri.parse('https://www.instagram.com/sitmng/');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              )) {
                throw Exception('Could not launch $url');
              }
            },
            child: const ContactCard(
              title: 'Instagram',
              description: 'connect with us on Instagram',
              icon: FontAwesomeIcons.instagram,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final url = Uri.parse('https://www.youtube.com/sitmangalore');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              )) {
                throw Exception('Could not launch $url');
              }
            },
            child: const ContactCard(
              title: 'Youtube',
              description: 'connect with us on Youtube',
              icon: FontAwesomeIcons.youtube,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final url = Uri.parse('https://twitter.com/sitmangalore');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              )) {
                throw Exception('Could not launch $url');
              }
            },
            child: const ContactCard(
              title: 'Twitter',
              description: 'connect with us on Twitter',
              icon: FontAwesomeIcons.twitter,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final url = Uri.parse('https://www.facebook.com/people/Srinivas-Institute-of-Technology-_Official/100093561541706/');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              )) {
                throw Exception('Could not launch $url');
              }
            },
            child: const ContactCard(
              title: 'Facebook',
              description: 'connect with us on Facebook',
              icon: FontAwesomeIcons.facebookMessenger,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final url = Uri.parse('https://api.whatsapp.com/send?phone=916366410494&text=To%20know%20more%20about%20any%20courses%20offered%20by%20SITMNG,%20please%20furnish%20the%20following%20details:%0aName:%0aPhone:%0aEmail%20Id:%0aCourse:%0aCity:%0aState');
              if (!await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              )) {
                throw Exception('Could not launch $url');
              }
            },
            child: const ContactCard(
              title: 'Whatsapp',
              description: 'connect with us on Whatsapp',
              icon: FontAwesomeIcons.whatsapp,
            ),
          ),
        ],
      ),
    );
  }
}
