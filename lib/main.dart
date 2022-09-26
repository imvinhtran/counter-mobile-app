import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Text(
            _counter.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: Icon(
              Icons.plus_one,
            ),
            onPressed: () {
              setState(() {
                _counter += 1;
                print(_counter);
              });
            },
          ),
        ),
      ),
    );
  }
}
