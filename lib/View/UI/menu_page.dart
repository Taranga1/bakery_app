import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/View/UI/login_page.dart';
import 'package:bakery_app/View/UI/logout_alert_dialoge.dart';
import 'package:bakery_app/View/UI/menu_page1.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.mode_edit,
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  accountName: Text(
                    "Taranga Baral",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    "tarangabaral1@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/user.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, BouncyAnimations(widget: MenuPage()));
                  },
                  child: ListTile(
                    title: Text("Menu"),
                    leading: Icon(Icons.restaurant_menu),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "second");
                  },
                  child: ListTile(
                    title: Text("Notification"),
                    leading: Icon(Icons.notifications),
                  ),
                ),
                ListTile(
                  title: Text("Payments"),
                  leading: Icon(Icons.payment),
                ),
                ListTile(
                  title: Text("About us"),
                  leading: Icon(Icons.info),
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => LogoutAlertPage(),
                      barrierDismissible: true,
                    );
                  },
                  child: ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.logout),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "images/bakery-shop.png",
                    height: 200,
                    width: 200,
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: Text("Nandan Bakery"),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, BouncyAnimations(widget: LoginPage()));
                  },
                  child: Icon(
                    FontAwesome.user_circle,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Colors.deepOrange,
                      hoverColor: Colors.deepOrange,
                      fillColor: Colors.deepOrange,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      ),
                      labelText: "Search Food Items",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 30,
                    child: Carousel(
                      autoplayDuration: Duration(seconds: 2),
                      boxFit: BoxFit.cover,
                      autoplay: true,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 1000),
                      dotSize: 9.0,
                      dotIncreasedColor: Colors.deepOrange,
                      dotBgColor: Colors.transparent,
                      dotPosition: DotPosition.bottomCenter,
                      dotVerticalPadding: 10.0,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,
                      images: [
                        NetworkImage(
                            'https://www.theorganickitchen.org/wp-content/uploads/2013/09/Naked-Chiocolate-Cake-1.jpg'),
                        NetworkImage(
                            'https://s3.amazonaws.com/pas-wordpress-media/content/uploads/2014/07/shutterstock_176646242.jpg'),
                        NetworkImage(
                            'https://mcmscache.epapr.in/post_images/website_13/post_16063310/thumb.jpg'),
                        NetworkImage(
                            'https://gipt.edu.np/wp-content/uploads/2019/12/bakery.jpg'),
                        NetworkImage(
                            'https://curlytales.com/wp-content/uploads/2019/10/images-11-2-1280x720.jpg'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 1300,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                child: Image.asset(
                                  "images/cake.png",
                                  height: 35,
                                  width: 70,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                  child: Image.asset(
                                "images/cookie.png",
                                height: 35,
                                width: 140,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                  child: Image.asset(
                                "images/cupcake2.png",
                                height: 40,
                                width: 70,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                  child: Image.asset(
                                "images/sliced-bread.png",
                                height: 40,
                                width: 70,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                  child: Image.asset(
                                "images/donut.png",
                                height: 40,
                                width: 70,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                  child: Image.asset(
                                "images/popcorn.png",
                                height: 40,
                                width: 80,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 4,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.deepOrange.withOpacity(0.7),
                              child: Center(
                                child: Image.asset(
                                  "images/chocolate-roll.png",
                                  height: 40,
                                  width: 60,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                MenuPage1(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
