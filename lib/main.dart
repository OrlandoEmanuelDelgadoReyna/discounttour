import 'package:discounttour/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Discount tour',
    home: homePage(),
    theme: ThemeData(
        primarySwatch: Colors.brown,
        iconTheme: IconThemeData(color: Colors.black)),
    debugShowCheckedModeBanner: false,
  ));
}
