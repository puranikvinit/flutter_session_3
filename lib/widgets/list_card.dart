import 'package:flutter/material.dart';
import 'package:flutter_session_3/constants.dart';
import 'package:flutter_session_3/screens/details_screen.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String fullTitle;
  const ListCard({
    required this.title,
    required this.fullTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => DetailsPage(
          //       title: title,
          //     ),
          //   ),
          // );
          Navigator.of(context).pushNamed(DetailsPage.routeName,arguments: title);
        },
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            bottom: 10.0,
            top: 10.0,
          ),
          child: (Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.network(moviePoster),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        fullTitle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
