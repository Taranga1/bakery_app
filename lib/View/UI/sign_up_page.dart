import 'dart:ui';
import 'login_page.dart';
import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/View/UI/sign_up_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 1100,
            width: 1000,
            color: Colors.red,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 140,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Image.asset(
                                    "images/signup.png",
                                    fit: BoxFit.cover,
                                  ),
                                )),
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
                          height: 900,
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
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                BouncyAnimations(
                                                    widget: LoginPage()),
                                              );
                                            },
                                            child: Text(
                                              "Login",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Sign up",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // name textfield
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    prefixIcon: Icon(
                                      Icons.person_pin,
                                      color: Colors.deepOrange,
                                      size: 26,
                                    ),
                                    labelText: "  Name",
                                  ),
                                ),
                              ),

                              // phone number textfield
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    prefixIcon: Icon(
                                      FontAwesome.phone,
                                      color: Colors.deepOrange,
                                      size: 23,
                                    ),
                                    labelText: "  Phone Number",
                                  ),
                                ),
                              ),
                              // Username Textfield
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
                                    labelText: "  Username(Optional)",
                                  ),
                                ),
                              ),
                              // passwored textfield
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
                                      size: 23,
                                    ),
                                    labelText: "  Password",
                                  ),
                                ),
                              ),

                              // Name of resturant textfield
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    prefixIcon: Icon(
                                      Icons.person_pin,
                                      color: Colors.deepOrange,
                                      size: 26,
                                    ),
                                    labelText: "  Name of Restaurant",
                                  ),
                                ),
                              ),

                              SignUp1(), // Login button and sign in with google facebook and apple is in  (SignUp1) page
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
