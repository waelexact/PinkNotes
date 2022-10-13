import 'package:flutter/material.dart';
import 'Quotes.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
  ));}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quotes> quotes = [
    Quotes(name: 'quote1llllllllll', author: 'author1'),
    Quotes(name: 'quote2lllllllllllll', author: 'author2'),
    Quotes(name: 'quote3llllllllllllllll', author: 'author3'),
  ];

  List<Note> Notes = [
    Note(title: 'Visite', text: 'Visite médical chez le docteur des yeux'),
    Note(title: 'Shopping', text: 'Termines le shopping list'),
    Note(title: 'Visite', text: 'Visite médical chez le docteur des yeux'),
    Note(title: 'Shopping', text: 'Termines le shopping list'),
    Note(title: 'Visite', text: 'Visite médical chez le docteur des yeux'),
    Note(title: 'Shopping', text: 'Termines le shopping list'),
  ];

  // Widget quoteTemplate(e){
  //   return Card(
  //     margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
  //     child: Padding(
  //       padding: const EdgeInsets.all(12.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: <Widget>[
  //           Text(
  //             e.name,
  //             style: TextStyle(
  //               fontSize: 18.0,
  //               color: Colors.grey[600],
  //             ),
  //           ),
  //           SizedBox(height: 6.0),
  //           Text(
  //             e.author,
  //             style: TextStyle(
  //               fontSize: 14.0,
  //               color: Colors.grey[800],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget notesTemplate(e){
    return Card(
      color: Colors.grey[200],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              e.title,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'ui-serif',
              ),
            ),
            SizedBox(height:6.0),
            Text(
              e.text,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
                fontFamily: 'Raleway',
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: Notes.map((e) => notesTemplate(e)).toList(),
      ),
      
    );
  }
}

