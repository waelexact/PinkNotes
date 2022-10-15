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
  ];

  int n = 1;
  Widget notesTemplate(e){
    return Card(
      color: Colors.white,
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
            SizedBox(height: 8.0),
            TextButton.icon(
                onPressed: (){
                  setState(() {
                    n -= 1;
                    Notes.remove(e);
                  });
                },
                icon: Icon(Icons.delete),
                label: Text('Supprimer'),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Notes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: Notes.map((e) => notesTemplate(e)).toList(),
      ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: (){
        n += 1;
        Note n1 = Note(title: 'note added $n', text: 'text added $n');
        setState(() {
          Notes.add(n1);
        });
      },
      child: Icon(
        Icons.add,
        color: Colors.redAccent,
      ),
    )
    );
  }
}

