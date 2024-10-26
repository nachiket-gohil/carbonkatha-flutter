import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF053644),
      child: Column(
        children: [
          const SizedBox(height: 60),
          const Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "ReadexPro",
              fontSize: 40,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 20),
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.person,
                  size: 50,
                ),
                SizedBox(height: 20),
                Text(
                  "Mehul Aswar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "NotoSans",
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Most Carbon footprint category - ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 18,
                  ),
                ),
                Text(
                  "FASHION",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Avg Daily Carbon Footprint - ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 18,
                  ),
                ),
                Text(
                  "5Kg Co2",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Avg weekly Carbon Footprint -",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 18,
                  ),
                ),
                Text(
                  " 58Kg Co2",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "NotoSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          SizedBox(height: 20),
          Icon(
            Icons.share_rounded,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
