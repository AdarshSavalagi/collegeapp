import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newuisit/supportings/supporting.dart';
import 'package:url_launcher/url_launcher.dart';

class LibraryModel{
  String course;
  List<Semester> sem;
  LibraryModel({required this.course, required this.sem});
}

class Semester {
  String sem;
  List<Subjects> subject;
  Semester({required this.sem, required this.subject});
}

class Subjects {
  String name;
  Map<String,String> books;
  Subjects({required this.books,required this.name});
}
List<Subjects> SubjectObjs = [
  Subjects(books: {'book-1':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-2':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-3':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf'}, name: 'M1'),
  Subjects(books: {'book-1':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-2':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-3':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf'}, name: 'M2'),
  Subjects(books: {'book-1':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-2':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-3':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf'}, name: 'M3'),
  Subjects(books: {'book-1':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-2':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-3':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf'}, name: 'M4'),
  Subjects(books: {'book-1':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-2':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf','book-3':'http://library.sitmng.ac.in/e-Question%20Papers/E-Books/Architecture%20E-Books/Architecture%20E-Books/21st%20Century%20Homes(www.irebooks.com).pdf'}, name: 'M5'),
];
List<Semester> SemesterObjs = [
  Semester(sem: 'sem-1', subject: SubjectObjs),
  Semester(sem: 'sem-2', subject: SubjectObjs),
  Semester(sem: 'sem-3', subject: SubjectObjs),
  Semester(sem: 'sem-4', subject: SubjectObjs),
];
List<LibraryModel> objs = [
  LibraryModel(course: 'BE', sem: SemesterObjs),
  LibraryModel(course: 'B.Arch', sem: SemesterObjs),
  LibraryModel(course: 'M.Tech', sem: SemesterObjs),
  LibraryModel(course: 'MBA', sem: SemesterObjs),
  LibraryModel(course: 'MCA', sem: SemesterObjs),

  LibraryModel(course: 'BE', sem: SemesterObjs),
  LibraryModel(course: 'B.Arch', sem: SemesterObjs),
  LibraryModel(course: 'M.Tech', sem: SemesterObjs),
  LibraryModel(course: 'MBA', sem: SemesterObjs),
  LibraryModel(course: 'MCA', sem: SemesterObjs),
];
class Subject extends StatelessWidget {
   Subject({Key? key,required this.subjects}) : super(key: key);
List<Subjects> subjects;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: "subjects",),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => DownloadPage(pdfs: subjects[index].books,),
                  ));
                },
                child: Text(subjects[index].name)),
          );
        },
      )
    );
  }
}

class DownloadPage extends StatelessWidget{

  const DownloadPage({Key? key,required this.pdfs}) : super(key: key);

  final Map<String,String> pdfs;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const APPBAR(title: "title"),
      body: ListView.builder(
        itemCount: pdfs.length,
        itemBuilder: (context, index){
          String key = pdfs.keys.elementAt(index);
          String? value = pdfs[key];
          return ListTile(
            title: Text(key),
            subtitle: Text(value!),
          );
        },
      )
    );
  }
}

class SemCard extends StatelessWidget {
  const SemCard({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 4,
      height: MediaQuery.of(context).size.width / 3 - 3,
      padding: const EdgeInsets.all(8),
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


class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key, required this.semester, required this.title, }) : super(key: key);
  final String title;
  final List<Semester> semester;
  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  late Subjects SubjectSubject=widget.semester[0].subject[0];
  late List<Subjects> selected_subject = widget.semester[0].subject;
  late Semester selected_sem =widget.semester[0] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: APPBAR(title: widget.title),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Choose Semester: ', style: GoogleFonts.getFont(
                'Varela Round',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DecoratedBox(
                decoration: BoxDecoration(//background color of dropdown button
                  border: Border.all(color: Colors.black38, width:3), //border of dropdown button
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15,vertical:6 ),
                  child:DropdownButton(
                    icon: const Icon(Icons.arrow_drop_down), // Custom dropdown icon
                    iconSize: 24, // Adjust icon size if needed
                    iconEnabledColor: Colors.grey, // Adjust icon color if needed
                    isExpanded: true, // Expand the dropdown button to fill available horizontal space
                    underline: Container(),
                    style:  GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(overflow: TextOverflow.ellipsis,color: Colors.black54)),
                    borderRadius: BorderRadius.circular(20.0),
                    value: selected_sem,
                    items: widget.semester.map((country){
                      return DropdownMenuItem(
                          value: country,
                          child: SizedBox(height:18,child: Text(country.sem,style: GoogleFonts.getFont('Varela Round',fontSize: 15),maxLines: 2,))
                      );
                    }).toList(),
                    onChanged: ( country){
                      setState(() {
                        selected_sem=country as Semester;
                        selected_subject=selected_sem.subject;
                        SubjectSubject = selected_subject[0];
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Choose Subjects: ', style: GoogleFonts.getFont(
                'Varela Round',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
            ),



            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DecoratedBox(
                decoration: BoxDecoration(//background color of dropdown button
                  border: Border.all(color: Colors.black38, width:3), //border of dropdown button
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15,vertical:6 ),
                  child:DropdownButton(
                    icon: const Icon(Icons.arrow_drop_down), // Custom dropdown icon
                    iconSize: 24, // Adjust icon size if needed
                    iconEnabledColor: Colors.grey, // Adjust icon color if needed
                    isExpanded: true, // Expand the dropdown button to fill available horizontal space
                    underline: Container(),
                    style:  GoogleFonts.getFont('Varela Round',textStyle: const TextStyle(overflow: TextOverflow.ellipsis,color: Colors.black54)),
                    borderRadius: BorderRadius.circular(20.0),
                    value: SubjectSubject,
                    items: selected_subject.map((country){
                      return DropdownMenuItem(
                          value: country,
                          child: SizedBox(height:18,child: Text(country.name,style: GoogleFonts.getFont('Varela Round',fontSize: 15),maxLines: 2,))
                      );
                    }).toList(),
                    onChanged: ( country){
                      setState(() {
                        SubjectSubject=country as Subjects;
                        print(SubjectSubject.books);
                      });
                    },
                  ),
                ),
              ),
            ),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(onPressed: (){
    showModalBottomSheet(
        context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (BuildContext context) {
          return ListView(
            children: [
              for(var element in SubjectSubject.books.entries) ...[
        GestureDetector(
          onTap:() async {
            final url = Uri.parse(
                element.value);
            if (!await launchUrl(
              url,
              mode:
              LaunchMode.externalApplication,
            )) {
              throw Exception(
                  'Could not launch $url');
            }
          },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text( element.key),
        ),
        )
        ]],
          );
      },

    );
  }, child: Text('Downloads: ', style: GoogleFonts.getFont(
    'Varela Round',
    fontSize: 17,
    fontWeight: FontWeight.bold,
  ),),),
)
          ],
        )
    );
  }
}


class LibCard extends StatelessWidget {
  const LibCard({Key? key, required this.libraryModel}) : super(key: key);

  final LibraryModel libraryModel;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChoicePage( semester: libraryModel.sem, title: libraryModel.course,)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 4,
        height: MediaQuery.of(context).size.width / 3 - 3,
        padding: const EdgeInsets.all(8),
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
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  libraryModel.course,
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
      )
    );
  }
}
