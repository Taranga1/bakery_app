import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Cart Page",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                )),
          ],
        ),
      ),
    );
  }
}
