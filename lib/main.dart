import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TimeOfDay _time = TimeOfDay.now();
  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, showPicker(value: _time, onChange: onTimeChanged));
        },
        child: const Text(
          "Open time picker",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
