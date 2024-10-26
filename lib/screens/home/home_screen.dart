import 'package:carbo2/core/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFF053644),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myCardRow(
                  context,
                  "45 Kg",
                  "CO2 so far this month",
                  "Daily Carbon\nfootprint",
                  "1 Kg",
                ),
                myCardRow(
                  context,
                  "53 %",
                  "CO2 so far this month",
                  "2% lesser than\naverage daily\ncount",
                  "",
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose your way to combat\n Carbon Emission Crisis",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "NotoSans",
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categoryCard(
                context,
                "assets/image/food.png",
                "Food",
                () {
                  Navigator.of(context).pushNamed(OneRoute.food_category);
                },
              ),
              categoryCard(
                context,
                "assets/image/cloth.png",
                "Fashion",
                () {
                  Navigator.of(context).pushNamed(OneRoute.fashion_category);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categoryCard(
                context,
                "assets/image/truck.png",
                "Transport",
                () {
                  Navigator.of(context).pushNamed(OneRoute.transport_category);
                },
              ),
              categoryCard(
                context,
                "assets/image/laptop.png",
                "Tech",
                () {
                  // Navigator.of(context).pushNamed(OneRoute.tech_category);
                  // canURL();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
// Future<void> canURL() async {
//   if (await canLaunchUrl(Uri.parse(techUrl))) {
//     print("true");
//     await launchUrl(Uri.parse(techUrl));
//   } else {
//     throw Exception('Could not launch ');
//   }
// }

Widget myCardRow(
  BuildContext context,
  String card1,
  String card2,
  String center,
  String trail,
) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.12,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.32,
          child: Card(
            color: const Color(0xFFDAEE87),
            elevation: 6,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    card1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "ReadexPro",
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    card2,
                    style: const TextStyle(
                      fontFamily: "NotoSans",
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ReadexPro",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Text(
          trail,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ReadexPro",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget categoryCard(BuildContext context, String image, String name, VoidCallback onClick) {
  return InkWell(
    onTap: onClick,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.height * 0.16,
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      padding: EdgeInsets.all(20),
      alignment: Alignment.bottomLeft,
      child: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "ReadexPro",
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}
