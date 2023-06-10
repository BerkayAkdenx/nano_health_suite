import 'package:app/feature/home_page.dart';
import 'package:app/feature/cart_page.dart';
import 'package:app/feature/like_page.dart';
import 'package:app/feature/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  var sayfaListesi = [
    const HomePage(),
    const CartPage(),
    const LikePage(),
    const UserPage(),
  ];

  int secilenIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            systemNavigationBarColor: Colors.black,
            systemNavigationBarDividerColor: Colors.white),
        backgroundColor: Colors.white,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35.0),
            bottomRight: Radius.circular(35.0),
          ),
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "All Products",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/ic_home.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/ic_cart.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/ic_like.png'),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/ic_user.png'),
            ),
            label: "",
          ),
        ],
        backgroundColor: Colors.white,
        currentIndex: secilenIndeks,
        onTap: (indeks) {
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}
