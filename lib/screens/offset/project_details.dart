import 'package:carbo2/screens/offset/offset_screen.dart';
import 'package:flutter/material.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          header(
            context,
            "Offsetting Project",
            "We with many Indian projects to procure credits",
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/tree.png",
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Tree plantation in Mumbai",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "NotoSans",
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
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
                  const Text(
                    "\$2.08 / 100kg ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF053644),
                      fontFamily: "ReadexPro",
                      fontSize: 40,
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
                "Purchase Offer",
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

Widget header(BuildContext context, String title, String description) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(vertical: 60),
    decoration: const BoxDecoration(
      // borderRadius: BorderRadius.circular(30),
      color: Color(0xFF053644),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "ReadexPro",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "NotoSans",
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
