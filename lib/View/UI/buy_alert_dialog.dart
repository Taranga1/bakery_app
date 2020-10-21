import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/View/UI/buy_page.dart';
import 'package:flutter/material.dart';

class BuyAlertPage extends StatefulWidget {
  @override
  _BuyAlertPageState createState() => _BuyAlertPageState();
}

class _BuyAlertPageState extends State<BuyAlertPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure ?"),
      content: Text("Be Sure Before Purchasing items"),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.push(context, BouncyAnimations(widget: BuyPage()));
            },
            child: Text("Yes")),
        FlatButton(
          onPressed: () {},
          child: Text("No"),
        ),
      ],
      elevation: 24,
      backgroundColor: Colors.white,
    );
  }
}
