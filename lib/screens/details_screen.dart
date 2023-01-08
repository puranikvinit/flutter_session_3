import 'package:flutter/material.dart';
import 'package:flutter_session_3/constants.dart';
import 'package:flutter_session_3/widgets/cast_card.dart';

class DetailsPage extends StatefulWidget {
  static const routeName = '/details';

  // final String title;
  const DetailsPage({
    Key? key,
    // required this.title,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // widget.title,
          args.toString(),
        ), //appRepo.listMovie[ind]["title"]),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        onPressed: () {},
        child: Icon(Icons.favorite),
        tooltip: "Add To WatchList",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30.0,
            ),
            SizedBox(
                height: 200, width: 100, child: Image.network(moviePoster)),
            Container(
              height: 40.0,
            ),
            const Text(
              "Description",
            ),
            Container(
              height: 30.0,
            ),
            const Text(
              "Cast:",
            ),
            SizedBox(
              height: 100,
              child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CastCard();
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "IMDb Rating",
            ),
            const Text(
              "IMDb Rating Count",
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigoAccent)),
                onPressed: () {
                  //Youtube Open Logic
                },
                child: const Text(
                  "YouTube Link",
                )),
          ],
        ),
      ),
    );
  }
}
