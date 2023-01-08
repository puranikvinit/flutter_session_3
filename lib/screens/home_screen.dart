import 'package:flutter/material.dart';
import 'package:flutter_session_3/screens/movies_listDisp.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

bool darkMode = true;

class _HomeScreenState extends State<HomeScreen> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Movies and TV Shows",
            style: TextStyle(fontFamily: "Dongle", fontSize: 40.0),
          ),
          centerTitle: false,
          backgroundColor: Colors.indigoAccent,
          foregroundColor: Colors.white,
        ),
        body: const MoviesListDisp());
  }
}
