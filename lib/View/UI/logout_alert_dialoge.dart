import 'package:flutter/material.dart';

class LogoutAlertPage extends StatefulWidget {
  @override
  _LogoutAlertPageState createState() => _LogoutAlertPageState();
}

class _LogoutAlertPageState extends State<LogoutAlertPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure want to Logout?"),
      content: Text("Be Sure Before Logging out any account"),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "first");
            },
            child: Text("Yes")),
        FlatButton(onPressed: () {}, child: Text("No")),
      ],
      elevation: 24,
      backgroundColor: Colors.white,
    );
  }
}
