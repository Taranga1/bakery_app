import 'package:bakery_app/View/UI/menu_page.dart';
import 'package:bakery_app/View/UI/notification_page.dart';

import 'View/UI/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
      routes: {
        "first": (_) => LoginPage(),
        "second": (_) => NotificationPage(),
      },
    ),
  );
}
