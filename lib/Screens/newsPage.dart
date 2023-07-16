import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const APPBAR(title: 'News',),
      body: ListView(
        children: [
          const NewsCard(),

          const NewsCard(),
          const NewsCard(),
          const NewsCard(),
          const NewsCard(),
        ],
      ),
    );
  }
}
