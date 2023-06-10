import 'package:app/feature/products/products_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2AB3C6),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 300,
            child: Image.asset("assets/logo.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30, left: 36),
            child: Row(
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 34)
                        .copyWith(bottom: 0),
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          label: Text("Email",
                              style: TextStyle(color: Colors.black)),
                          border: UnderlineInputBorder(),
                          focusColor: Colors.amber),
                    ),
                    const SizedBox(height: 32),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        suffix: Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey,
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(color: Colors.black),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 40),
                      child: SizedBox(
                        height: 74,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductsPage(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              backgroundColor: const Color(0xff2AB3C6)),
                          child: const Text(
                            "Contiune",
                          ),
                        ),
                      ),
                    ),
                    const InkWell(
                      child: Text("NEED HELP?"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
