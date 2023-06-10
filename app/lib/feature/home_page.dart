import 'package:app/core/methods/methods.dart';
import 'package:app/feature/detail/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                  child: Image.asset("assets/sneakers.png"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),
                        ));
                    Methods().showBottomSheet(context);
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Product name",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/nike.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Product name",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/tshirt.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Product name",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
