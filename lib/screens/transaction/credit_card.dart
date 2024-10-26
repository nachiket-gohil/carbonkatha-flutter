import 'package:flutter/material.dart';

import '../offset/project_details.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          header(
            context,
            "Credit Cards",
            "Fetched from your Email account",
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
                children: List.generate(
                  5,
                  (index) {
                    return ListTile(
                      tileColor: const Color(0xFFDAEE87),
                      minLeadingWidth: 50,
                      leading: Text(
                        "${22 + index}\nOct",
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                      title: const Text(
                        "Abc Store",
                        style: const TextStyle(fontFamily: "ReadexPro"),
                      ),
                      subtitle: const Text(
                        "Entertainment",
                        style: const TextStyle(fontFamily: "NotoSans"),
                      ),
                      trailing: Text(
                        "Rs. ${200 * index}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
