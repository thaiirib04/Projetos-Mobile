import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     

     home: Scaffold(

      appBar: AppBar(
        title: Text("Aqui é a AppBar"),
        backgroundColor: Colors.cyan,
        ),

        body: Center(child: Text("Aqui é o Body do Scaffold!")),
        backgroundColor: Colors.white,

        drawer: Drawer(
          child: ListView(children: [Text('Opção 1'), Text('Opção 2')]),
        ),
     ),
    );
  }
}
