import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  final String image;
  final String location;
  final String description;
  final String name;
  final bool discount;
  final String markedprice; //price before Discont
  final String sellingprice; //price after Discount

  BuyPage({
    this.discount,
    this.image,
    this.location,
    this.description,
    this.markedprice,
    this.name,
    this.sellingprice,
  });
  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 20,
                      width: MediaQuery.of(context).size.width - 20,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
