import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';

class privacyscreen extends StatefulWidget {
  const privacyscreen({Key? key}) : super(key: key);

  @override
  State<privacyscreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<privacyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: 'Privacy Polices'),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: 'Last updated: July 01, 2023',
                  style: GoogleFonts.getFont(
                    'Varela Round',
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w900,color: Colors.black54),
                  ),
                children: [
                  TextSpan(
                    text:'\n\nThis Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. ',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\nInterpretation and Definitions:',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 25,color: Colors.black),
                    ), ),

                  TextSpan(
                    text:'\n\nInterpretation ',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 20,color: Colors.black),
                    ), ),

                  TextSpan(
                    text:'\n\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\nDefinitions ',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 20,color: Colors.black),
                    ), ),

                  TextSpan(
                    text:'\n\nFor the purposes of this Privacy Policy:',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ Account',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54,fontWeight: FontWeight.w900),
                    ), ),

                  TextSpan(
                    text:' means a unique account created for You to access our Service or parts of our Service.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ Affiliate',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54,fontWeight: FontWeight.w900),
                    ), ),

                  TextSpan(
                    text:' means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),


                  TextSpan(
                    text:'\n\n\t⚈ Application refers to SIT Mangalore, the software program provided by the Company',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),


                  TextSpan(
                    text:'\n\n\t⚈ Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Srinivas Institute of Technology, SRINIVAS INSTITUTE OF TECHNOLOGY A. SHAMA RAO FOUNDATION MANGALURU 574143, KARNATAKA.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),


                  TextSpan(
                    text:'\n\n\t⚈ Country refers to: Karnataka, India',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ Personal Data is any information that relates to an identified or identifiable individual.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t ⚈ Service refers to the Application.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),


                  TextSpan(
                    text:'\n\n\t⚈ Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ Usage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),


                  TextSpan(
                    text:'\n\n\t⚈ You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\nContact Us',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 25,color: Colors.black),
                    ), ),

                  TextSpan(
                    text:'\n\nIf you have any questions about this Privacy Policy, You can contact us:',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black54),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ By email: srinivasinstitute@gmail.com',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black),
                    ), ),

                  TextSpan(
                    text:'\n\n\t⚈ By phone number: 6366410494',
                    style: GoogleFonts.getFont(
                      'Varela Round',
                      textStyle: const TextStyle(
                          fontSize: 17,color: Colors.black),
                    ), ),

                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
