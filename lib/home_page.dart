import 'package:flutter/material.dart';

class _MyAppState extends State<MyApp> {

   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: _buildBody(),
    );
  }
}

