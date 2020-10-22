import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/View/UI/bill_page.dart';
import 'package:bakery_app/View/UI/menu_page.dart';
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
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                BouncyAnimations(
                  widget: BillPage(
                    sellingprice: widget.sellingprice,
                    discount: widget.discount,
                    description: widget.description,
                    markedprice: widget.markedprice,
                    image: widget.image,
                    location: widget.location,
                    name: widget.name,
                  ),
                ),
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.deepOrange,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "Checkout Bill",
                  style: GoogleFonts.gugi(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 20,
                      width: MediaQuery.of(context).size.width - 20,
                      color: Colors.transparent,
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
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(widget.image),
                          ),
                          SizedBox(
                            height: 16,
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
                                "1",
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Selling Price : ",
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
                                widget.sellingprice,
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Marked Price : ",
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
                                widget.markedprice,
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
                          SizedBox(
                            height: 10,
                          ),
                          widget.discount == true
                              ? Row(
                                  children: [
                                    Text(
                                      "Discount : ",
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
                                      "Yes",
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
                                )
                              : Row(
                                  children: [
                                    Text(
                                      "Discount : ",
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
                                      "No",
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
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => MenuPage()));
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width - 30,
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    width: 3,
                                    color: Colors.grey,
                                  ),
                                  right: BorderSide(
                                    width: 3,
                                    color: Colors.grey,
                                  ),
                                  top: BorderSide(
                                    width: 3,
                                    color: Colors.grey,
                                  ),
                                  bottom: BorderSide(
                                    width: 3,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Add Items",
                                    style: GoogleFonts.gugi(
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
