import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class APPBAR extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const APPBAR({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      elevation: 0,
      title: Text(
        title,
        style: GoogleFonts.getFont('Varela Round',
            textStyle:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class cardsample extends StatelessWidget {
  cardsample({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 4,
      height: MediaQuery.of(context).size.width / 3 - 3,
      margin: const EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: Icon(
                icon,
                color: const Color(0xFF24245E),
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Varela Round',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Eventcards extends StatefulWidget {
  const Eventcards({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  State<Eventcards> createState() => _EventcardsState();
}

class _EventcardsState extends State<Eventcards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // Define the shape of the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // Define how the card's content should be clipped
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Define the child widget of the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Add padding around the row widget
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Add an image widget to display an image

                Text(
                  widget.title,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.getFont('Varela Round',
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      )),
                ),
                Text(
                  "Date:02/05/2003",
                  style: GoogleFonts.getFont(
                    'Varela Round',
                    textStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommonDropdownButton extends StatelessWidget {
  String? chosenValue = 'Role';
  final String? hintText;
  final List<String>? itemsList;
  final Function(dynamic value)? onChanged;
  final String? Function(String?)? validator;
  CommonDropdownButton(
      {Key? key,
      this.chosenValue,
      this.hintText,
      this.itemsList,
      this.onChanged,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.only(right: 10, left: 10),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(10)),
      ),
      elevation: 1,
      validator: validator,
      isExpanded: true,
      hint: Text(hintText ?? ''),
      iconSize: 30,
      iconEnabledColor: Colors.black,
      icon: const Icon(
        Icons.arrow_drop_down_sharp,
        size: 15,
      ),
      value: chosenValue,
      items: itemsList?.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}

class HolidayCard extends StatefulWidget {
  const HolidayCard({super.key});

  @override
  State<HolidayCard> createState() => _HolidayCardState();
}

class _HolidayCardState extends State<HolidayCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // Define the shape of the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // Define how the card's content should be clipped
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Define the child widget of the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Add padding around the row widget
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Add an image widget to display an image

                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:  const Image(image: CachedNetworkImageProvider(
                    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/16110133958662.56be291c46cdd.gif",
                    maxHeight: 100,
                    maxWidth: 100,
                  ),
                  fit: BoxFit.cover,width: 100,height: 100,),
                ),
                // Add some spacing between the image and the text
                Container(width: 20),
                // Add an expanded widget to take up the remaining horizontal space
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Add some spacing between the top of the card and the title
                      Container(height: 5),
                      // Add a title widget
                      Text(
                        "Holiday Notice",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.getFont('Varela Round',
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      // Add some spacing between the title and the subtitle
                      Container(height: 5),
                      // Add a subtitle widget
                      Text(
                        "Date:02/05/2003",
                        style: GoogleFonts.getFont(
                          'Varela Round',
                          textStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      // Add some spacing between the subtitle and the text
                      Container(height: 10),
                      // Add a text widget to display some text
                      Text(
                        "Due to heavy rain today classes are suspended Due to heavy rain today classes are suspended",
                        maxLines: 3,
                        style: GoogleFonts.getFont(
                          color: const Color(0xFF24245E),
                          'Varela Round',
                          textStyle: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  void _startDownload(String fileUrl) async {
    await FlutterDownloader.enqueue(
      url: fileUrl,
      savedDir: 'downloads/', // Provide the desired directory to save the file
      showNotification: true, // Show a notification for the download progress
      openFileFromNotification:
          true, // Open the downloaded file from the notification
    );
  }

  final String link;
  final String title;
  final String date;
  final String description;
  const NoticeCard(
      {Key? key,
      required this.title,
      required this.date,
      required this.description,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 1,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              // leading: const Icon(Icons.add_alert_outlined),
              // title: Text('title', style: TextStyle(fontSize: 18.0)),
              subtitle: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ExpansionTile(
                  trailing: const Text(""),
                  title: Text(title,
                      style: GoogleFonts.getFont('Varela Round',
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(date,
                      style: GoogleFonts.getFont(
                        'Varela Round',
                      )),
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          description,
                          style: GoogleFonts.getFont('Varela Round',
                              textStyle: const TextStyle(fontSize: 15.0)),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          final url = Uri.parse(link);
                          if (!await launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Text(
                          'Download Notice',
                          style: GoogleFonts.getFont('Varela Round',
                              textStyle: const TextStyle(fontSize: 12.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {

          showModalBottomSheet(
            context: context,

            isScrollControlled: true,
            backgroundColor: Colors.white,
            //elevates modal bottom screen
            elevation: 10,
            // gives rounded corner to modal bottom screen
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (BuildContext context) {
              // UDE : SizedBox instead of Container for whitespaces
              return FractionallySizedBox(
                heightFactor: 0.85,
                child: ListView(
                  children:   [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(9),
                        child: Image(image: CachedNetworkImageProvider(
                          "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                          errorListener: () => const Icon(Icons.error),
                        ),
                          width: double.infinity,
                          fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("This is title",style: GoogleFonts.getFont('Varela Round',
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                      child: Text("Date: 06/06/2003",style: GoogleFonts.getFont('Varela Round',
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                          )),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Description: As an association activity of Department of Information Science & Engineering, under AISE a hands-on session was conducted on “STRING SIMILARITY-HAMMING & LEVENSHTEIN DISTANCE”. The hands-on session was about the introduction to String matching and how it was dealt in past and modern trend. String metrics are used heavily in information integration and are currently used in areas including fraud detection, fingerprint analysis, plagiarism detection, ontology merging, DNA analysis, RNA analysis, image analysis, evidence-based machine learning, database data deduplication, data mining, incremental search, data integration, malware detection, and semantic knowledge integrationBrief Introduction to Hamming distance with code was explained by Shrama Madival and Levenshtein Distance was explained with the various applications like Spell Checkers, Correction Systems for optical character recognition, Software to assist natural language, Translation memory by Jayashree K.R.This event was supported by Prof. Sudarshan K, Head of the department, ISE . The Hands-on session was conducted by Students of 2nd Year ISE Jayashree K.R, Shrama Madival under the guidance of Prof.Sowmya, Assistant professor, ISE organised the event on 07/07/2023. All students of 4th SEM ISE took active participation in the event.",style: GoogleFonts.getFont('Varela Round',
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                          )),textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      child: Card(
        // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // Set the clip behavior of the card
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // Define the child widgets of the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Image(image: CachedNetworkImageProvider(
              "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
              errorListener: () => const Icon(Icons.error),
            ),
              width: double.infinity,
              fit: BoxFit.cover,),

            // Add a container with padding that contains the card's title, text, and buttons
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Display the card's title using a font size of 24 and a dark grey color
                  Text(
                    "Cards Title 2",
                    style: GoogleFonts.getFont('Varela Round',
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        )),
                  ),
                  // Add a space between the title and the text
                  Container(height: 5),
                  // Display the card's text using a font size of 15 and a light grey color
                  Text(
                    'Display the cards text using a font size of 15 and a light grey color Display the cards text using a font size of 15 and a light grey color',
                    style: GoogleFonts.getFont('Varela Round',
                        textStyle: TextStyle(
                          fontSize: 11,
                          color: Colors.grey[700],
                        )),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' Date:02/05/2003',
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.getFont('Varela Round',
                        textStyle: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF24245E),
                        )),
                  ),
                  // Add a row with two buttons spaced apart and aligned to the right side of the card
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (final double strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}

class contactcards extends StatelessWidget {
  const contactcards(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});
  final IconData icon;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(title,
                      style: GoogleFonts.getFont(
                        'Varela Round',
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 15),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      description,
                      style: GoogleFonts.getFont(
                        'Varela Round',
                        textStyle: const TextStyle(),
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}


class gallerycard extends StatefulWidget {
  const gallerycard({Key? key}) : super(key: key);

  @override
  State<gallerycard> createState() => _gallerycardState();
}

class _gallerycardState extends State<gallerycard> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        showModal( context: context,
            builder: (BuildContext context) { return Center(
                child:  Container(
                  decoration:BoxDecoration(
                      border: Border.all(), borderRadius: BorderRadius.circular(5)),
                  child: Image(image: CachedNetworkImageProvider(
            "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                    errorListener: () => const Icon(Icons.error),
            ),
              width: double.infinity,
              fit: BoxFit.cover,),
              )
              , );
            });},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration:BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(5)),
          child:Image(image: CachedNetworkImageProvider(
            "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
            errorListener: () => const Icon(Icons.error),
          ),
            width: MediaQuery.of(context).size.width/3-32,
            height: MediaQuery.of(context).size.width/3-32,
            fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

