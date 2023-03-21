import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twosensor/pedometer_app_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unexpected Ped0 GPS',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontFamily: GoogleFonts.nosifer().fontFamily),
          titleLarge: TextStyle(color: Colors.black, fontFamily: GoogleFonts.piedra().fontFamily, fontSize: 40,)
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unexpected Ped0 GPS'),
          centerTitle: true,
        ),
        body: const PedometerApp(),
      ),
    );
  }
}

// https://medium.com/@stefanodecillis/flutter-using-google-maps-and-drawing-routes-100829419faf
// https://pub.dev/packages/pedometer

