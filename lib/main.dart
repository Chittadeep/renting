import 'package:flutter/material.dart';
import 'package:renting/Home.dart';
import 'Screens/MyApp.dart';
//import 'Screens/MyCustomForm.dart';

void main() {
  List L1 = [];
  // List l = [
  //   Home("Bidhan Park", "Susit Kumar Sinha", "9832747626", "asset/home1.jpg",
  //       500.00),
  //   Home("Arvil Park", "Tridib Sinha", "9832747626", "asset/home2.jpg", 600.00),
  //   Home("Shankarpur", "Soma Biswas", "9132744762", "asset/home3.jpeg", 700.00),
  //   Home("Kolkata", "Chittadeep Biswas", "8967149075", "Assets/Photo4.jpg",
  //       800.00)
  // ];

  runApp(MaterialApp(
    title: 'Your title',
    home: MyApp(L1),
  ));
}
