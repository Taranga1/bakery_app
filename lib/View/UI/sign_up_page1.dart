import 'package:bakery_app/View/UI/menu_page.dart';

import 'login_page.dart';
import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:flutter/material.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // login button as continer
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: InkWell(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MenuPage()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.deepOrange,
                  Colors.red,
                ])),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text("or"),
        ),
        // or sign in with google, facebook and apple

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 70, right: 70),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          "https://yt3.ggpht.com/a/AATXAJysEynEghsvVEHdcjVYfdaDfrimWMiTvtuEVKYTGJM=s900-c-k-c0xffffffff-no-rj-mo"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://lh3.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              Text("Create",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              BouncyAnimations(widget: LoginPage()),
            );
          },
        ),
      ],
    );
  }
}
