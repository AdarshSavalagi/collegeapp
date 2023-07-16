import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../supportings/supporting.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
int _selected = 0;


  List<List<String>> branches = [
    ['select Course',"AIML","Learning Artificial intelligence and Machine Learning Learning", "Aeronautical Engineering", "Marine Engineering"],
    ['select Course',"computer science postgraduate","marine", "Physics"]
  ];
  // dynamic countries=UG;
  late String? select='select Course';


  String? gender="string";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const APPBAR(title:'Become a Student'),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text("Admission Enquiry 2023-24",style:GoogleFonts.getFont('Varela Round',
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ) ,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Name cannot be empty";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(
                ),
                ),
              ),

              const SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle(

                ),
                ),
              ),

              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Phone number",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle()
                ),
              ),

              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter City",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    gapPadding:2,
                    borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(width: 5)
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val!.isEmpty) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.getFont('Varela Round',
                  textStyle: const TextStyle()
                ),
              ),


              Row(
                children: [
                  _icon(0, text: "UG"),
                  _icon(1, text: "PG"),
                ],
              ),

        DecoratedBox(
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

              value: select,
              items: branches[_selected].map((country){
                return DropdownMenuItem(

                  value: country,
                  child: SizedBox(height:18,child: Text(country,style: GoogleFonts.getFont('Varela Round',fontSize: 15),maxLines: 2,))
                );
              }).toList(),
                onChanged: (country){
                setState(() {
                  select=country;
                });
                },
            ),
          ),
        ),

              const SizedBox(height: 16.0),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print(_email);
                  }
                },



                child:  Text('Submit',style: GoogleFonts.getFont('Varela Round',fontWeight: FontWeight.w900)),

              ),
            ],
          ),
        ),
      ),
    );
  }





  Widget _icon(int index, {required String text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0,right: 16,bottom: 16),
      child: InkResponse(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: _selected == index ? Colors.red : Colors.black54),
                    borderRadius: BorderRadius.circular(12 )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text, style: GoogleFonts.getFont('Varela Round',textStyle: TextStyle(color: _selected == index ? Colors.red : null))),
                )),
          ],
        ),
        onTap: () => setState(
              () {
            _selected = index;
            select=branches[0][0];
            // countries = index == 0 ? UG:PG;
          },
        ),
      ),
    );
  }



}
