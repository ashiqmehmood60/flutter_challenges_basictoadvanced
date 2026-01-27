import 'dart:math';

import 'package:flutter/material.dart';

class ColorChanges extends StatefulWidget {
  const ColorChanges({super.key});

  @override
  State<ColorChanges> createState() => _ColorChangesState();
}

class _ColorChangesState extends State<ColorChanges> {
  Color bgcolor = Colors.white;
  void changecolor(){
    setState(() {
      bgcolor = Random().nextBool()
          ? Colors.black
          : Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Changes"),
        centerTitle: true,
      ),
      body: Container(
        color: bgcolor,
        child:  Center(
            child: ElevatedButton(onPressed: (){
              changecolor();
            }, child: Text("Tap"))

        ),
      ),
    );
  }
}