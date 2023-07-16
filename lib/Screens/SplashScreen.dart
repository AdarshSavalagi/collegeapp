import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/Screens/HomePage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState(){
    super.initState();
    (){
      Future.delayed(const Duration(seconds: 8), () {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomePage(),
          ),
        );
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF24245E),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/logo.png', width: 120,),
     SizedBox(
       height: 250,
       child: TextLiquidFill(
            text: 'Srinivas Institute of Technology\nValachil ',
            waveColor: Colors.white70,
            boxBackgroundColor: Color(0xFF24245E) ,
            textAlign: TextAlign.center,

            textStyle: GoogleFonts.getFont('Varela Round',
              textStyle: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w900

            ),
            ),


        ),
     ),
          ],



  ),
    );
  }
}
