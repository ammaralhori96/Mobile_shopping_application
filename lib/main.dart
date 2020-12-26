import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "mobiwafr",
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            //start App Bar ==================
            appBar: AppBar(
              title: Text("home"),
              backgroundColor: Colors.red,
              centerTitle: true,
              elevation: 10,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
//end App Bar ===========================
// start Drawer ============================
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                      accountName: Text("ammar alhori"),
                      accountEmail: Text("ammaralhori96@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        // image: DecorationImage(
                        //   image: AssetImage(
                        //     "images/imag.jpg"), fit: BoxFit.cover,
                        //   )
                      )),
                  ListTile(
                    title: Text("الرئيسية"),
                    leading: Icon(
                      Icons.home,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("أقسام"),
                    leading: Icon(
                      Icons.category,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("حول التطبيق"),
                    leading: Icon(
                      Icons.info,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("الاعدادات"),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("تسجيل الخروج"),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            //end drawer ==============
            //start body ================
            body: ListView(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.topRight,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      AssetImage(
                        'images/sliders/ttt.jpg',
                      ),
                      AssetImage(
                        'images/sliders/imag.jpg',
                      ),
                      AssetImage(
                        'images/sliders/imag.jpg',
                      ),
                    ],
                  ),
                ),
// end carousel ==============================
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("الفئات:",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold)),
                ),

// start catagoryes ==============================

                Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-car-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child:
                                  Text("سيارات", textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-bank-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child: Text("بنك", textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-circus-cannon-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child: Text("ترفيه", textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-food-cart-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child: Text("مطعم", textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-hospital-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child: Text("مشفى", textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              "images/category/icons8-phone-office-96.png",
                              width: 80,
                              height: 80,
                            ),
                            subtitle: Container(
                              child: Text("خدمة جوال",
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ))
// End catagores ================================
                ,
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("آخر المنتجات:",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold)),
                ),
// start leats product====================
                Container(
                  height: 400,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      GridTile(
                        child: Image.asset("images/cars/megane.jpg"),
                        footer: Container(
                          height: 20,
                          color: Colors.redAccent.withOpacity(0.5),
                          child: Text(
                            "P30 pro",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )

// end leats product====================
              ],
            ),
          ),

// end body ============================
        ));
  }
}
