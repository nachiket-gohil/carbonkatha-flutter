import 'package:carbo2/core/routes.dart';
import 'package:flutter/material.dart';

class OffsetScreen extends StatefulWidget {
  const OffsetScreen({super.key});

  @override
  State<OffsetScreen> createState() => _OffsetScreenState();
}

class _OffsetScreenState extends State<OffsetScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
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
              const Text(
                "Offset: Reduce carbon emmision with benefits",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ReadexPro",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              buttonStyle(
                context,
                "Projects",
                MediaQuery.of(context).size.width,
                const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ReadexPro",
                  fontSize: 20,
                ),
                () {
                  Navigator.of(context).pushNamed(OneRoute.project_details);
                },
              ),
              buttonStyle(
                context,
                "Investment",
                MediaQuery.of(context).size.width,
                const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ReadexPro",
                  fontSize: 20,
                ),
                () {
                  Navigator.of(context).pushNamed(OneRoute.investment_details);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buttonStyle(
    BuildContext context, String text, double bWidth, TextStyle textStyle, VoidCallback onClick) {
  return InkWell(
    onTap: onClick,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: bWidth,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFDAEE87),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle,
      ),
    ),
  );
}
