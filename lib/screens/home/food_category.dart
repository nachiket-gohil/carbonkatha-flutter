import 'package:flutter/material.dart';

import '../offset/offset_screen.dart';

class FoodCategory extends StatefulWidget {
  const FoodCategory({super.key});

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/image/foodcat.png",
                  height: 150,
                ),
              ),
              const Text(
                "58 Kg CO2",
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
                height: MediaQuery.of(context).size.height * 0.7,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buttonStyle(
                            context,
                            "Meal Log",
                            MediaQuery.of(context).size.width * 0.33,
                            const TextStyle(
                              fontFamily: "ReadexPro",
                              fontSize: 16,
                            ),
                            () {},
                          ),
                          buttonStyle(
                            context,
                            "Grocery List",
                            MediaQuery.of(context).size.width * 0.35,
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
                      child: Text(
                        "Recommended for you",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "ReadexPro",
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          recommCard(context, "Spinach cheese Sandwich"),
                          recommCard(context, "Spinach cheese Sandwich"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget recommCard(BuildContext context, String text) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.25,
    width: MediaQuery.of(context).size.height * 0.25,
    margin: const EdgeInsets.only(left: 30),
    decoration: BoxDecoration(
      color: const Color(0xFF2E6963),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        Placeholder(
          fallbackHeight: MediaQuery.of(context).size.height * 0.16,
          fallbackWidth: MediaQuery.of(context).size.height * 0.16,
          color: Colors.green,
          strokeWidth: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "ReadexPro",
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ],
    ),
  );
}
