import 'dart:ui';
import 'package:bakery_app/View/UI/buy_page.dart';
import 'package:bakery_app/View/UI/clicked_page.dart';
import 'package:bakery_app/View/UI/Page_animation.dart';
import 'package:bakery_app/models/Product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage1 extends StatefulWidget {
  @override
  _MenuPage1State createState() => _MenuPage1State();
}

class _MenuPage1State extends State<MenuPage1> {
  List<ProductDetails> productdetails = [
    ProductDetails(
      name: "Blackforest Cake",
      discount: true,
      image:
          "https://natashaskitchen.com/wp-content/uploads/2015/06/Black-Forest-Cake-5.jpg",
      location: "Bharatpur,Nepal",
      markedprice: "RS 600",
      sellingprice: "RS 480",
      description:
          "Black Forest cake has multiple (usually 4) layers of chocolate sponge cake, cherries, and whipped cream. It is frosted with whipped cream and covered with chocolate shavings and a few cherries for decoration. Kirschwasser (cherry schnapps) is used to flavor the whipped cream.",
    ),
    ProductDetails(
      name: "Sponge Cake",
      discount: false,
      image:
          "https://www.thespruceeats.com/thmb/BKn3_3-guJZWr1q3qMLrLHycDxI=/2000x1332/filters:fill(auto,1)/strawberry-and-cream-sponge-cake-recipe-435944-hero-01-761a7ca0d757415d9f648d1191e522bb.jpg",
      location: "Bharatpur,Nepal",
      sellingprice: "RS 420",
      description: "HI there",
    ),
    ProductDetails(
      name: "Carrot Cake",
      discount: false,
      image:
          "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2007/2/16/0/ry0401_carrotcake.jpg.rend.hgtvcom.616.462.suffix/1552488933139.jpeg",
      location: "Bharatpur,Nepal",
      sellingprice: "RS 500",
      description: "HI there",
    ),
    ProductDetails(
      name: "Genoise Cake",
      discount: false,
      image:
          "https://www.hellomagazine.com/imagenes/cuisine/2019083077075/victoria-geonoise-sponge-recipe/0-373-125/genoisesponge-t.jpg",
      location: "Bharatpur,Nepal",
      sellingprice: "RS 500",
      description: "HI there",
    ),
    ProductDetails(
        name: "Classic Pound Cake",
        discount: true,
        image:
            "https://www.wilton.com/dw/image/v2/AAWA_PRD/on/demandware.static/-/Sites-wilton-project-master/default/dw3080c7a1/images/project/WLRECIP-782/classic-pound-cake-recipe_1.jpg?sw=800&sh=800",
        location: "Bharatpur,Nepal",
        sellingprice: "RS 560",
        description: "HI there",
        markedprice: "RS 600"),
    ProductDetails(
        name: "Chiffon Cake",
        discount: true,
        image:
            "https://www.wilton.com/dw/image/v2/AAWA_PRD/on/demandware.static/-/Sites-wilton-project-master/default/dwf1b1b1d0/images/project/WLRECIP-344/2105-983.jpg?sw=800&sh=800",
        sellingprice: "RS 560",
        description: "HI there",
        markedprice: "RS 600"),
    ProductDetails(
        name: "Choclate Cookie",
        discount: true,
        image:
            "https://www.tasteofhome.com/wp-content/uploads/2017/10/Cookie_5-1024x769.jpeg",
        sellingprice: "RS 180",
        description: "HI there",
        markedprice: "RS 120"),
    ProductDetails(
      name: "Oreo Buiscuit",
      discount: false,
      image:
          "https://i.insider.com/5ada0bcebd967142008b46d7?width=1100&format=jpeg&auto=webp",
      sellingprice: "RS 25",
      description: "HI there",
    ),
    ProductDetails(
      name: "Unicorn Cup Cake",
      discount: false,
      image:
          "https://media2.s-nbcnews.com/j/newscms/2018_16/1332898/unicorn-cupcakes-today-041918-tease_607876a763a32491c1bf4bb7c8eab53e.today-inline-small2x.jpg",
      description: "HI there",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Choclate Cup Cake",
      discount: false,
      image:
          "https://preppykitchen.com/wp-content/uploads/2016/07/Chocolate-cupcakes-recipe-light.jpg",
      description: "HI there",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Vanilla Cup Cake",
      discount: false,
      description: "HI there",
      image:
          "https://www.cookwithmanali.com/wp-content/uploads/2017/01/Eggless-Vanilla-Cupcakes-500x375.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Rainbow Cup Cake",
      discount: false,
      description: "HI there",
      image:
          "https://truffle-assets.imgix.net/pxqrocxwsjcc_5qda5ocefy4wwsoc6mc8i4_national-coming-out-day-cupcakes-no-graphic.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Frap Cup Cake",
      discount: false,
      description: "HI there",
      image:
          "https://www.cookingclassy.com/wp-content/uploads/2014/09/neapolitan-cupcakes7-edit-srgb.-500x500.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Creamed Cup Cake",
      discount: false,
      description: "HI there",
      image:
          "https://www.iheartkatiecakes.co.uk/wp-content/uploads/2020/01/Raspberry-White-Chocolate-Cupcakes-2-scaled.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Mermaid Cake",
      discount: false,
      description: "HI there",
      image:
          "https://www.oetker.co.uk/Recipe/Recipes/oetker.co.uk/uk-en/baking/image-thumb__3238__RecipeDetail/mermaid-cupcakes.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Bread",
      discount: false,
      description: "HI there",
      image:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/homemade-bread-horizontal-1547759080.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Aligator Bread",
      discount: false,
      description: "HI there",
      image:
          "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2018/4/2/0/FNK_ALLIGATOR-BREAD-H_s4x3.jpg.rend.hgtvcom.616.462.suffix/1522680152953.jpeg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Doughnut",
      discount: false,
      description: "HI there",
      image:
          "https://i1.wp.com/www.patesmith.co/wp-content/uploads/2016/06/SimpsonsDoughnuts8.jpg?resize=1140%2C660",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Choclate Doughnut",
      discount: false,
      description: "HI there",
      image:
          "https://img.delicious.com.au/-A-my2CW/del/2015/10/iced-chocolate-doughnut-21131-1.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Popcorn",
      discount: false,
      description: "HI there",
      image:
          "https://www.onceuponachef.com/images/2015/06/Crazy-Good-Spicy-Italian-Popcorn.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Cheeese Popcorn",
      description: "HI there",
      discount: false,
      image:
          "https://d169bp7fx2b8qn.cloudfront.net/uploads/2020/05/Cheddar-Cheese-Popcorn-2-01382-1024x683.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Choclate Roll",
      description: "HI there",
      discount: false,
      image:
          "https://assets.kraftfoods.com/recipe_images/opendeploy/114589_KRL_K45971V3_OR1_OH_640x428.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Cream Roll",
      discount: false,
      description: "HI there",
      image:
          "https://1.bp.blogspot.com/-GRN9BsjwCMg/XgFoVlnV2eI/AAAAAAAAdjQ/v2qG6blSx7cs3ImDrRPdsysOvjYRGbr5gCEwYBhgL/s1600/20191222_143318.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Cinnamon Roll",
      discount: false,
      description: "HI there",
      image:
          "https://previews.123rf.com/images/greenartphotography/greenartphotography1612/greenartphotography161200045/68464581-cinnamon-roll-bread-buns-rolls-on-parchment-paper-homemade-bakery-top-view-sweet-homemade-christmas-.jpg",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Sweets(Laddu)",
      description: "HI there",
      discount: false,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Laddu_Sweet.JPG/400px-Laddu_Sweet.JPG",
      sellingprice: "RS 25",
    ),
    ProductDetails(
      name: "Coconut Laddu",
      description: "HI there",
      discount: false,
      image:
          "https://spicesnflavors.com/wp-content/uploads/2017/09/rose-ladoo-1-min.jpg",
      sellingprice: "RS 25",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Today's Menu",
          style: GoogleFonts.gugi(
            textStyle: TextStyle(
              color: Color(0xff09bfe3),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: productdetails.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        BouncyAnimations(
                          widget: ClickedPage(
                            description: productdetails[index].description,
                            image: productdetails[index].image,
                            location: productdetails[index].location,
                            discount: productdetails[index].discount,
                            markedprice: productdetails[index].markedprice,
                            sellingprice: productdetails[index].sellingprice,
                            name: productdetails[index].name,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.94,
                      color: Colors.transparent,
                      child: Stack(
                        // ignore: deprecated_member_use
                        overflow: Overflow.visible,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 10),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 38,
                                      backgroundImage: NetworkImage(
                                          productdetails[index].image),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              160,
                                          color: Colors.transparent,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    productdetails[index].name,
                                                    style: GoogleFonts.gugi(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        letterSpacing: 1,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Icon(
                                                        Icons.favorite_outline,
                                                        color:
                                                            Colors.deepOrange,
                                                        size: 32,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  productdetails[index]
                                                              .discount ==
                                                          true
                                                      ? Row(
                                                          children: [
                                                            Text(
                                                              productdetails[
                                                                      index]
                                                                  .markedprice,
                                                              style: TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough),
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              productdetails[
                                                                      index]
                                                                  .sellingprice,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black87,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      : Text(
                                                          productdetails[index]
                                                              .sellingprice,
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                        ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 15,
                                                    width: 80,
                                                    color: Colors.transparent,
                                                    child: Image.network(
                                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRukuQQLtPUJMjoDEfLm_sGpRC9Fp-tegUW3Q&usqp=CAU",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              BouncyAnimations(
                                                                widget: BuyPage(
                                                                  description:
                                                                      productdetails[
                                                                              index]
                                                                          .description,
                                                                  image: productdetails[
                                                                          index]
                                                                      .image,
                                                                  location: productdetails[
                                                                          index]
                                                                      .location,
                                                                  discount: productdetails[
                                                                          index]
                                                                      .discount,
                                                                  markedprice:
                                                                      productdetails[
                                                                              index]
                                                                          .markedprice,
                                                                  sellingprice:
                                                                      productdetails[
                                                                              index]
                                                                          .sellingprice,
                                                                  name: productdetails[
                                                                          index]
                                                                      .name,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Container(
                                                            height: 34,
                                                            width: 80,
                                                            color: Colors
                                                                .deepOrange,
                                                            child: Center(
                                                              child: Text(
                                                                "Buy",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
