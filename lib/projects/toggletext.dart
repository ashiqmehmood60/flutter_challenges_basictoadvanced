import 'package:flutter/material.dart';

class Toggletext extends StatefulWidget {
  const Toggletext({super.key});

  @override
  State<Toggletext> createState() => _ToggletextState();
}

class _ToggletextState extends State<Toggletext> {
  bool Visibile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle Text"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Visibile = !Visibile;
                });
              },
              child: Visibile
                  ? const Text("Hide Text")
                  : const Text("Show Text"),
            ),
          ),
        ],
      ),
    );
  }
}
