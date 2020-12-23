import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
        leading: IconButton(icon: Icon(Icons.security) , onPressed: (){},),
      ),
      drawer: Drawer(
        child: ListView(),
      )
        ,),)

    );
  }
}