import 'package:flutter/material.dart';
import 'views/homepage.dart';
import 'styles/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ThemeData appTheme = new ThemeData.dark().copyWith(
    primaryColor: Color(0xFF142850),
    scaffoldBackgroundColor: Color(0xFF142850),
    accentColor: Color(0xFFbbe1fa),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: floatingButtonBackground),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}
