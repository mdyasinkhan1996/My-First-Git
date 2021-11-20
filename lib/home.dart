import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String Valuepush = "";
  HomePage(String message){
    Valuepush = message;
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page"
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(widget.Valuepush),
            )
          ],
        ),
      ),
    );
  }
}
