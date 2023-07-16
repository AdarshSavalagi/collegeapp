import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';

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
      appBar: APPBAR(title: "title"),
      body: ,
    );
  }
}

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key, required this.semester}) : super(key: key);
final List<Semester> semester;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title: "semester"),
      body:  ListView.builder(
          itemCount: semester.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Subject(subjects: semester[index].subject),
                    ));
                  },
                  child: Text(semester[index].sem)),
            );
          },
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
              builder: (context) => ChoicePage( semester: libraryModel.sem,)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(libraryModel.course)
      ),
    );
  }
}
