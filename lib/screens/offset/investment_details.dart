import 'package:carbo2/screens/offset/offset_screen.dart';
import 'package:flutter/material.dart';

import 'project_details.dart';

class InvestmentDetails extends StatefulWidget {
  const InvestmentDetails({super.key});

  @override
  State<InvestmentDetails> createState() => _InvestmentDetailsState();
}

class _InvestmentDetailsState extends State<InvestmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          header(
            context,
            "Mutual Funds",
            "We with many Indian projects to procure credits ",
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 20),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.18,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Green Funds \$30",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "NotoSans",
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonStyle(
                context,
                "More Details",
                MediaQuery.of(context).size.width * 0.44,
                const TextStyle(
                  fontFamily: "NotoSans",
                  fontSize: 16,
                ), () {
              // Navigator.of(context).pushNamed(OneRoute.offset_details);
            }),
            buttonStyle(
                context,
                "Invest Here",
                MediaQuery.of(context).size.width * 0.44,
                const TextStyle(
                  fontFamily: "NotoSans",
                  fontSize: 16,
                ), () {
              // Navigator.of(context).pushNamed(OneRoute.offset_details);
            }),
          ],
        ),
      ),
    );
  }
}
