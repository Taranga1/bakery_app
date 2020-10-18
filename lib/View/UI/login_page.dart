import 'dart:ui';
import 'package:bakery_app/View/UI/login_page1.dart';
import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/View/UI/sign_up_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 800,
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
                        top: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Image.asset(
                                  "images/login.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )),

                    Positioned(
                      top: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        child:
                            // Downward lower white container
                            Container(
                          height: 600,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 70, right: 70),
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width -
                                          140,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Login",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                BouncyAnimations(
                                                    widget: SignUp()),
                                              );
                                            },
                                            child: Text(
                                              "Sign up",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Username textfield
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    prefixIcon: Icon(
                                      FontAwesome.envelope,
                                      color: Colors.deepOrange,
                                      size: 23,
                                    ),
                                    labelText: "  Username",
                                  ),
                                ),
                              ),
                              // Password Textfield
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    prefixIcon: Icon(
                                      FontAwesome.lock,
                                      color: Colors.deepOrange,
                                      size: 29,
                                    ),
                                    labelText: "  Password",
                                  ),
                                ),
                              ),

                              LoginPage1(), // Login button and sign in with google facebook and apple is in (LoginPage1) page
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
