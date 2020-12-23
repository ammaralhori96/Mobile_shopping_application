import 'package:flutter/material.dart';
void main() => runApp (MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "mobiwafr",
      home: Scaffold(appBar: AppBar(title:Text("home"), backgroundColor: Colors.blueAccent, actions: [
        IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){})
      ],
        centerTitle: true,
        elevation: 10,
        leading: IconButton(icon: Icon(Icons.security) , onPressed: (){},),
      ),)

    );
  }
}