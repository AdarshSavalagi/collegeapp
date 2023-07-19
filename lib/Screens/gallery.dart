import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_gallery_view/image_gallery_view.dart';
import 'package:newuisit/Screens/temp.dart';
import 'package:newuisit/supportings/supporting.dart';

// TODO: Gallery page is pending

class galleryScreen extends StatefulWidget {
  const galleryScreen({Key? key}) : super(key: key);

  @override
  State<galleryScreen> createState() => _galleryScreenState();
}

class _galleryScreenState extends State<galleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: APPBAR(title: "Gallery"),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GalleryPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CARD(
                    title: 'Raga',
                    icon: FontAwesomeIcons.userNinja,
                  ),
                )),
          ],
        ));
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: APPBAR(title: "Gallery"),
      body: ListView(
        children: [
          BlockOdd(),
          BlockEven(),
          BlockOdd(),
          BlockEven(),
        ],
      ),
    );
  }
}
