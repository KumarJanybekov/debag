import 'package:flutter/material.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {
  const CounterApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter Counter Application',
        home: CounterScreenState(),
        debugShowCheckedModeBanner: false);
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Тапшырма1'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _incrementCount,
            ),
            Text("${_count}"),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: _decrementCount,
            )
          ],
        )));
  }
}
