import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 60,
                      width: MediaQuery.of(context).size.width - 20,
                      color: Colors.deepOrange,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.name,
                            style: GoogleFonts.gugi(
                              textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              Text(
                                "Quantity : ",
                                style: GoogleFonts.gugi(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.gugi(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
