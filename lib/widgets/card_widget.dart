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
          color: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    country.svgImage,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
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
