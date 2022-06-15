// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(meuApp());
}

class meuApp extends StatefulWidget {
  const meuApp({Key? key}) : super(key: key);

  @override
  State<meuApp> createState() => meuAppBody();
}

class meuAppBody extends State<meuApp> {

  int NumPerguntas = 0;

  void responder() {
    setState(() {
      NumPerguntas++;
    });
  }

  @override
    final Perguntas = [
    "Matchup contra riven e irelia builda oq?",
    "Matchup de gp contra yorick lixera build arco ou garra?"
  ];

  Widget build(BuildContext context) {
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(Perguntas[NumPerguntas]),
             ElevatedButton(
              child: Text('CDR'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('DANO'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('VIDA'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}