import 'package:bakery_app/View/UI/buy_alert_dialog.dart';
import 'package:bakery_app/models/Product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ClickedPage extends StatefulWidget {
  final String image;
  final String location;
  final String description;
  final String name;
  final bool discount;
  final String markedprice; //price before Discont
  final String sellingprice; //price after Discount

  ClickedPage({
    this.discount,
    this.image,
    this.location,
    this.description,
    this.markedprice,
    this.name,
    this.sellingprice,
  });
  @override
  _ClickedPageState createState() => _ClickedPageState();
}

class _ClickedPageState extends State<ClickedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => BuyAlertPage(),
                  barrierDismissible: true,
                  barrierColor: Colors.transparent,
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepOrange,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Place Order",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 1000,
            width: 1000,
            color: Colors.deepOrange,
            child: Column(
              children: [
                Stack(
                  // ignore: deprecated_member_use
                  overflow: Overflow.visible,
                  children: [
                    // Upper orange container in Login Page
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.deepOrange,
                    ),
                    // inserting container and Image as child of container
                    Positioned(
                        top: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 380,
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width,
                              child: Image.network(
                                widget.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        )),

                    Positioned(
                      top: 340,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        child:
                            // Downward lower white container
                            Container(
                          height: 750,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_outline,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(26),
                                child: Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width - 40,
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      widget.discount == true
                                          ? Row(
                                              children: [
                                                Text(
                                                  widget.sellingprice,
                                                  style: TextStyle(
                                                    color: Color(0xff09bfe3),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 18,
                                                ),
                                                Text(
                                                  widget.markedprice,
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough),
                                                ),
                                              ],
                                            )
                                          : Text(
                                              widget.sellingprice,
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 130,
                                            color: Colors.transparent,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.add_circle_outline,
                                                  color: Colors.black54,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Container(
                                                  height: 20,
                                                  width: 70,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "Quantity",
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Icon(
                                                  Icons.do_disturb_on_outlined,
                                                  color: Colors.black54,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 90,
                                            color: Colors.transparent,
                                            child: Image.network(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRukuQQLtPUJMjoDEfLm_sGpRC9Fp-tegUW3Q&usqp=CAU",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.description,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width - 30,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/user.png"),
                                        backgroundColor: Colors.transparent,
                                        radius: 26,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      color: Colors.transparent,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: "Leave Public Review",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
