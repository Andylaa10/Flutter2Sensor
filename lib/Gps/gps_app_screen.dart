import 'package:flutter/material.dart';

class GpsApp extends StatefulWidget {
  const GpsApp({Key? key}) : super(key: key);

  @override
  State<GpsApp> createState() => _GpsAppState();
}

class _GpsAppState extends State<GpsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Distance'),
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}
