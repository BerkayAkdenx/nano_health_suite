import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Cart Page",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
