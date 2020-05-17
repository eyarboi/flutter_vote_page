import 'package:flutter/material.dart';
import 'package:vote_page1/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final List<String> items = new List<String>.generate(12, (i)=>"Card ${i+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        title: Text("Time to Vote!!"),
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index){
          return new Dismissible(
            key: new Key(items[index]),
            onDismissed: (direction){
            items.removeAt(index);
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text("Card Eliminated"),
            ));
            },
            background: new Container(
              color: Colors.orangeAccent,
            ),
            child: new ListTile(
              title: new Text("${items[index]}"),
            ),
          );
        },
      ),
    );
  }
}


