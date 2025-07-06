import 'package:flutter/material.dart';
import 'package:shop_game/data/countries_data.dart';
import 'package:shop_game/screens/home_screen.dart';
import 'package:shop_game/widgets/card_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
