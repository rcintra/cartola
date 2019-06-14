import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartola"),
      ),
      body: _body(),
      drawer: Container(
        width: 250,
        color: Colors.yellow,
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Center(
        // child: _text(),
        child: _img(),
      ),
    );
  }

  _img() {
    return Image.asset("assets/images/logo.jpg");
  }

  _text() {
    return Text(
      "Hello",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
      ),
    );
  }
}
