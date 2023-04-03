import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('delicious meals'),
        ),
        body: const Center(
          child: Text('hello '),
        ),
      ),
    );
  }
}
