import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 3
    ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),);
    },
    );
  }

  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('Schola'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/logo_sampul.png',
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
