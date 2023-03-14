import 'package:flutter/material.dart';
import 'main.dart';
class fragone extends StatefulWidget {
  const fragone({Key? key}) : super(key: key);

  @override
  State<fragone> createState() => _fragoneState();
}

class _fragoneState extends State<fragone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton:
        Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: FloatingActionButton(
            onPressed: (){

            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ),
      ),


    );
  }
}

