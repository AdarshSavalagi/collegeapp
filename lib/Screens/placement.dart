import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

class placementScreen extends StatefulWidget {
  const placementScreen({Key? key}) : super(key: key);

  @override
  State<placementScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<placementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text('Placement',style:GoogleFonts.getFont('Varela Round',
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,))),
        // Customize the app bar as per your needs
        // You can add actions, change colors, etc.
      ),
      SliverFillRemaining(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse( 'https://www.sitmng.ac.in/SIT/Placement/About-Placement')),
        ),
      ),
    ]));
  }
}
