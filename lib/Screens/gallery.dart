import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_view/image_gallery_view.dart';
import 'package:newuisit/Screens/temp.dart';
import 'package:newuisit/supportings/supporting.dart';

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
      body: ListView(
        children: [
          BlockEven(),
          BlockEven(),
          BlockEven(),
        ],

      ),
    );
  }
}