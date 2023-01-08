import 'package:flutter/material.dart';
import 'package:flutter_session_3/screens/details_screen.dart';
import 'package:flutter_session_3/screens/home_screen.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Movies and TV Shows Application",
    // home: const HomeScreen(),
    theme: ThemeData.light(),
    initialRoute: '/',
    routes: {
      HomeScreen.routeName: (context) => const HomeScreen(),
      DetailsPage.routeName: (context) => const DetailsPage()
    },
  ));
}
