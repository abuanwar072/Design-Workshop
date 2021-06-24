import 'package:flutter/material.dart';
import 'package:onbording/constants.dart';
import 'package:onbording/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Design Workshop',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 1.5),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white12,
          border: textFieldOutlineInputBorder,
          enabledBorder: textFieldOutlineInputBorder,
          focusedBorder: textFieldOutlineInputBorder,
          hintStyle: TextStyle(color: Colors.white30),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
