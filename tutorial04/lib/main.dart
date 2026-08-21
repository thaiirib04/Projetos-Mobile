import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


enum PeriodoEstudo { manha, tarde, noite, madrugada}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        //appbar
        appBar: AppBar(title: Text("Quizz"), backgroundColor: Colors.green),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),

          child: Column(
            
          ),
        )
      ),
    );
  }
}
