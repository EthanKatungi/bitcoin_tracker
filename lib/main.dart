import 'package:flutter/material.dart';
import 'price_screen.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
