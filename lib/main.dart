import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
