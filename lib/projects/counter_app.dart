import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int value = 0;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    if (value > 0) {
      setState(() {
        value--;
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("invalid operation")));
    }
  }

  void reset() {
    setState(() {
      value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Center(child: Text(value.toString())),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: Text("-"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text("+"),
              ),
            ],
          ),
          SizedBox(height: 220),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    reset();
                  },
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
