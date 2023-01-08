import 'package:flutter/material.dart';
import 'package:flutter_session_3/widgets/list_card.dart';

class MoviesListDisp extends StatefulWidget {
  const MoviesListDisp({Key? key}) : super(key: key);

  @override
  _MoviesListDispState createState() => _MoviesListDispState();
}

class _MoviesListDispState extends State<MoviesListDisp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const ListCard(
              title: 'Sherlock',
              fullTitle: 'Sherlock Holmes',
            );
          }),
    );
  }
}
