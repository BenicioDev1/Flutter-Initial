import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(primaryColor: Colors.blue),
      home: meuWidget(),
    );
  }

  meuWidget() => Scaffold(
        appBar: AppBar(
          title: Text("App Flutter"),
          centerTitle: true,
        ),
        body: Container(color: Colors.white),
        drawer: Container(color: Colors.blue),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () {
              print("Pessionado");
            }),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 30.0,
            child: Row(
              children: [Text("Meu bottomAppBar"), Icon(Icons.home)],
            ),
          ),
          color: Colors.green,
        ),
        persistentFooterButtons: <Widget>[
          IconButton(icon: Icon(Icons.add_alarm), onPressed: null)
        ],
      );
}
