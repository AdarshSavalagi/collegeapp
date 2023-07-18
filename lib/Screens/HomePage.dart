import 'dart:ui';
import 'package:newuisit/Screens/About.dart';
import 'package:newuisit/Screens/Departments.dart';
import 'package:newuisit/Screens/Events.dart';
import 'package:newuisit/Screens/alumni.dart';
import 'package:newuisit/Screens/community.dart';
import 'package:newuisit/Screens/course.dart';
import 'package:newuisit/Screens/gallery.dart';
import 'package:newuisit/Screens/joinus.dart';
import 'package:newuisit/Screens/library.dart';
import 'package:newuisit/Screens/maps.dart';
import 'package:newuisit/Screens/placement.dart';
import 'package:newuisit/Screens/sports.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:newuisit/Screens/newsPage.dart';
import 'package:newuisit/Screens/Holidays.dart';
import 'package:newuisit/Screens/BusScreen.dart';
import 'package:newuisit/Screens/Notices.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'contact.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: 235,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/home.png', fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: 250.0,
                  child: SizedBox(
                    height: 69,
                    child: DefaultTextStyle(
                      style: GoogleFonts.getFont('Varela Round',
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              letterSpacing: 3,
                          )),
                      child: AnimatedTextKit(
                        repeatForever: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Srinivas Institute of Technology, Valachil",
                          ),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 46, 45, 45),
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 12),
                        child: Text("Welcome",
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 12),
                        child: Text('02-07-2023',
                            style: GoogleFonts.getFont('Varela Round',
                                textStyle: const TextStyle(fontSize: 15))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const noticesScreen()));
                            },
                            child:
                                cardsample(title: "Notices", icon: Icons.email),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HolidayScreen()),
                              );
                            },
                            child: cardsample(
                                title: "Holidays",
                                icon: Icons.beach_access_rounded),
                          ),
                          GestureDetector(
                              onTap: () async {
                                final url =
                                    Uri.parse('https://results.vtu.ac.in');
                                if (!await launchUrl(
                                  url,
                                  mode: LaunchMode.externalApplication,
                                )) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: cardsample(
                                  title: "VTU Results",
                                  icon: Icons.query_stats)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NewsScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "News", icon: Icons.article)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CalendarScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Events", icon: Icons.event)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const placementScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Placements", icon: Icons.laptop)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BusTiming()),
                                );
                              },
                              child: cardsample(
                                  title: "Bus timings",
                                  icon: Icons.departure_board)),
                          GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const libraryScreen()),
                                );
                                
                              },
                              child: cardsample(
                                  title: "Library", icon: Icons.menu_book)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DepartmentScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Department", icon: Icons.hub)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const galleryScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Gallery",
                                  icon: Icons.photo_album_outlined)),
                          GestureDetector(
                              onTap: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const coursepage()),
                                );
                              },
                              child: cardsample(
                                  title: "Courses offered",
                                  icon: Icons.school)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const mapScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Maps", icon: Icons.location_on)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlumniScreen()),
                                );

                              },
                              child: cardsample(
                                  title: "Alumni", icon: Icons.diversity_2)),
                          GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SportsScreen()));
                              },
                              child: cardsample(
                                  title: "Sports",
                                  icon: Icons.sports_tennis_sharp)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const AboutScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "About Srinivas Group", icon: Icons.info)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const contactScreen()),
                                );

                              },
                              child: cardsample(
                                  title: "Contact us", icon: Icons.call)),
                          GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyForm()));
                              },
                              child: cardsample(
                                  title: "Become a Student",
                                  icon: Icons.join_full_rounded)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const CommunityScreen()),
                                );
                              },
                              child: cardsample(
                                  title: "Community & legal", icon: Icons.groups)),
                        ],
                      ),

                    ]),
              )
            ],
          )
        ],
      )),
    );
  }
}
