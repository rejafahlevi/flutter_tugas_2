import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'TUGAS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      //Count 10
      // if (_counter > 10) {
      //   _counter = 1;
      // }

      //Bilangan Ganjil Genap
      // if (_counter % 2 == 0) {
      //   _text = "Genap";
      // } else {
      //   _text = "Ganjil";
      // }

      //Bilangan Prima
      _text = "Prima: ";
      for (int i = 1; i < _counter; i++) {
        int bil = 0;
        for (var j = 1; j <= i; j++) {
          if (i % j == 0) {
            bil = bil + 1;
          }
        }
        if (bil == 2) {
          _text += ' ${i}, ';
        }
      }

      //Bilangan Kelipatan 3
      // _text = "Ganjil: ";
      // for (int i = 0; i <= _counter; i++) {
      //   if (i == 0) {
      //     _text += '';
      //   } else if (i == 1) {
      //     _text += '${i},';
      //   } else {
      //     if (i % 3 == 0) {
      //       if (i % 2 == 0) {
      //         _text += '${i},';
      //       }
      //     }
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, This is counter :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
