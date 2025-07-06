import 'package:flutter/material.dart';
import 'package:shop_game/model/card_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.country});

  final CardGame country;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: GestureDetector(
        onTap: () {
          print("Жмакнул"); // Заменить на навигацию
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          shadowColor: Colors.black,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  country.svgImage,
                  width: 40,
                  height: 60,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                Text(country.name),
                Text(country.title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
