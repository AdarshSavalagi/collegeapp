import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text('Maps',style:GoogleFonts.getFont('Varela Round',
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,))),
        // Customize the app bar as per your needs
        // You can add actions, change colors, etc.
      ),
      SliverFillRemaining(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse('https://goo.gl/maps/9ndjmro6whq1qvvU6')),
        ),
      ),
    ]));
  }
}
