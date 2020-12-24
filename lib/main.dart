import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "mobiwafr",
      home: Directionality(textDirection: TextDirection.rtl, child:
      Scaffold(appBar: AppBar(title:Text("home"), backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 10,
        actions: [IconButton(icon: Icon(Icons.search) , onPressed: (){},)] ,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            UserAccountsDrawerHeader(
                accountName: Text("ammar alhori"),
                accountEmail: Text("ammaralhori96@gmail.com"),
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person),),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  // image: DecorationImage(
                  //   image: AssetImage(
                  //     "images/imag.jpg"), fit: BoxFit.cover,
                  //   )
                  )
                ),
            ListTile(
              title: Text("الرئيسية"),
              leading: Icon(Icons.home , color: Colors.indigo,),
              onTap: (){},
            ),
            ListTile(
              title: Text("أقسام"),
              leading: Icon(Icons.category , color: Colors.indigo,),
              onTap: (){},
            ),
            ListTile(
              title: Text("حول التطبيق"),
              leading: Icon(Icons.info , color: Colors.indigo,),
              onTap: (){},
            ),
            ListTile(
              title: Text("الاعدادات"),
              leading: Icon(Icons.settings , color: Colors.indigo,),
              onTap: (){},
            ),
            ListTile(
              title: Text("تسجيل الخروج"),
              leading: Icon(Icons.exit_to_app , color: Colors.indigo,),
              onTap: (){},
            ),

          ],
        ),
      ),
      body: Column(children: [
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
              AssetImage('images/ttt.jpg' ,),
              AssetImage('images/imag.jpg',),
            ],

          ),
        ),

      ],),
      ),)

    );
  }
}