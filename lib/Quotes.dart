class Quotes {

  String name;
  String author;

  Quotes({required this.name, required this.author});

  String getter_name(){
    return this.name;
  }
  String getter_author(){
    return this.author;
  }

}

class Note{

  String title;
  String text;

  Note({required this.title, required this.text});
  String getter_title(){
    return this.title;
  }
  String getter_text(){
    return this.text;
  }

}