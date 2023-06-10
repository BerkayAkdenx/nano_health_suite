import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Like Page",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
