import 'package:flutter/material.dart';

import '../offset/offset_screen.dart';

class FashionCategory extends StatefulWidget {
  const FashionCategory({super.key});

  @override
  State<FashionCategory> createState() => _FashionCategoryState();
}

class _FashionCategoryState extends State<FashionCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/image/fashioncat.png",
                height: 150,
              ),
            ),
            const Text(
              "34 Kg CO2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF053644),
                fontFamily: "ReadexPro",
                fontSize: 26,
              ),
            ),
            const Text(
              "so far this month",
              style: TextStyle(
                color: Color(0xFF053644),
                fontFamily: "ReadexPro",
                fontSize: 18,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFF053644),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttonStyle(
                          context,
                          "Explore Eco-friendly DIY and upcycled projects",
                          MediaQuery.of(context).size.width * 0.7,
                          const TextStyle(
                            fontFamily: "ReadexPro",
                            fontSize: 16,
                          ),
                          () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonStyle(
                          context,
                          "Track Emission",
                          MediaQuery.of(context).size.width * 0.38,
                          const TextStyle(
                            fontFamily: "ReadexPro",
                            fontSize: 16,
                          ),
                          () {},
                        ),
                        buttonStyle(
                          context,
                          "Ask Carby",
                          MediaQuery.of(context).size.width * 0.3,
                          const TextStyle(
                            fontFamily: "ReadexPro",
                            fontSize: 16,
                          ),
                          () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
