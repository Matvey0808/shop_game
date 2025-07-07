import 'package:flutter/material.dart';
import 'package:shop_game/data/countries_data.dart';
import 'package:shop_game/widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // void navigationCard() {
  //   setState(() {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => , // Сюда написать экран
  //       )
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 70),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: countries.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final country = countries[index];
                  return CardWidget(country: country);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
