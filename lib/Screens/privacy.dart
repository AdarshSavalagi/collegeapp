import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

class privacyscreen extends StatefulWidget {
  const privacyscreen({Key? key}) : super(key: key);

  @override
  State<privacyscreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<privacyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            title: Text('Privacy Policies',style:GoogleFonts.getFont('Varela Round',
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,))),
            // Customize the app bar as per your needs
            // You can add actions, change colors, etc.
          ),
          SliverFillRemaining(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                  url: Uri.parse('https://www.freeprivacypolicy.com/live/c5161324-d950-4a25-8ad6-8fb118d32dbe')),
            ),
          ),
        ]));
  }
}
