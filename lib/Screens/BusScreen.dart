
import 'package:flutter/material.dart';
import 'package:newuisit/supportings/bus_content_model.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:timelines/timelines.dart';
import 'package:google_fonts/google_fonts.dart';

class BusTiming extends StatefulWidget {
  const BusTiming({Key? key}) : super(key: key);

  @override
  State<BusTiming> createState() => _BusTimingState();
}

class _BusTimingState extends State<BusTiming> {
  final List<bool> _isExpanded = List.generate(10, (_) => false);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const APPBAR(title: "Bus Timings"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            dividerColor: Colors.transparent,
            elevation: 0,
            expansionCallback: (index, isExpanded) => setState(
              () {
                _isExpanded[index] = !isExpanded;
              },
            ),
            children: [
              for (int i = 0; i < contents.length; i++)
                ExpansionPanel(
                  body: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, bottom: 20.0),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.person_outline,
                                color: Colors.black87,
                                size: 24,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.75, 0),
                              child: Text(contents[i].discription,
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.getFont(
                                    'Varela Round',
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const DotIndicator(),
                      const SizedBox(
                        height: 20.0,
                        child: SolidLineConnector(),
                      ),
                      for (int j = 0; j < contents[i].routes.length; j++)
                        TimelineTile(
                          oppositeContents: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(contents[i].routes[j]['time'],
                                style: GoogleFonts.getFont(
                                  'Varela Round',
                                )),
                          ),
                          contents: Card(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(contents[i].routes[j]['place'],
                                  style: GoogleFonts.getFont(
                                    'Varela Round',
                                  )),
                            ),
                          ),
                          node: const TimelineNode(
                            indicator: OutlinedDotIndicator(),
                            startConnector: SolidLineConnector(),
                            endConnector: SolidLineConnector(),
                          ),
                        ),
                      const SizedBox(
                        height: 20.0,
                        child: SolidLineConnector(),
                      ),
                      const DotIndicator(),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  headerBuilder: (_, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.directions_bus,
                            color: Colors.black87,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 5),
                            child: Text(contents[i].title,
                                style: GoogleFonts.getFont(
                                  'Varela Round',
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                  isExpanded: _isExpanded[i],
                )
            ],
          ),
        ),
      ),
    );
  }
}
