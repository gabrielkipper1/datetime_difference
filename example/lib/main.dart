import 'package:datetime_difference/flutter_date_difference.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Date Difference',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _dateDifference = FlutterDateDifference();

  late DateTime dt1;
  late DateTime dt2;

  @override
  void initState() {
    dt1 = DateTime.now();
    dt2 = dt1.add(const Duration(days: 99));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Date Difference"),
      ),
      body: Center(
        child: Text(_dateDifference.calculate(dt1, dt2)),
      ),
    );
  }
}
