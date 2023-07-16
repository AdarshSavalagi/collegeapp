// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:html/parser.dart' as parser;
// import 'package:http/http.dart' as http;
//
//
//
// class temppage extends StatefulWidget {
//
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<temppage> {
//
// // Strings to store the extracted Article titles
//   String result1 = 'Result 1';
//
// // boolean to show CircularProgressIndication
// // while Web Scraping awaits
//   bool isLoading = false;
//
//   Future<List<String>> extractData() async {
//
//     // Getting the response from the targeted url
//     final response =
//     await http.Client().get(Uri.parse('http://library.sitmng.ac.in/view.php'));
//
//     // Status Code 200 means response has been received successfully
//     if (response.statusCode == 200) {
//
//       // Getting the html document from the response
//       var document = parser.parse(response.body);
//       try {
//
//         // Scraping the first article title
//         var responseString1 = document.getElementById('listing');
//
//         print('clear dude :${responseString1!.}');
//
//         // Converting the extracted titles into
//         // string and returning a list of Strings
//         return [
//           responseString1!.text,
//         ];
//       } catch (e) {
//         return [ 'ERROR!'];
//       }
//     } else {
//       return ['ERROR: ${response.statusCode}.'];
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('GeeksForGeeks')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//
//                 // if isLoading is true show loader
//                 // else show Column of Texts
//                 isLoading
//                     ? CircularProgressIndicator()
//                     : Column(
//                   children: [
//                     Text(result1,
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold)),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.05,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.08),
//                 MaterialButton(
//                   onPressed: () async {
//
//                     // Setting isLoading true to show the loader
//                     // setState(() {
//                     //   isLoading = true;
//                     // });
//
//                     // Awaiting for web scraping function
//                     // to return list of strings
//                     final response = await extractData();
//
//                     // Setting the received strings to be
//                     // displayed and making isLoading false
//                     // to hide the loader
//                     // setState(() {
//                     //   result1 = response[0];
//                     //   isLoading = false;
//                     // });
//                   },
//                   color: Colors.green,
//                   child: const Text(
//                     'Scrap Data',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
import 'package:html/dom.dart' as htmlDom;

class temppage extends StatefulWidget {
  @override
  _MyScraperState createState() => _MyScraperState();
}

class _MyScraperState extends State<temppage> {
  List<String> childrenText = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://library.sitmng.ac.in/view.php')); // Replace with your desired URL
    final document = htmlParser.parse(response.body);

    final List<htmlDom.Element> children =
    document.querySelectorAll('.w'); // Replace with your desired CSS selector

    setState(() {
      childrenText = children.map((element) => element.text).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML Scraper'),
      ),
      body: ListView.builder(
        itemCount: childrenText.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(childrenText[index]),
            ),
          );
        },
      ),
    );
  }
}
