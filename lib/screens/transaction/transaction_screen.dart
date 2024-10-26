import 'package:flutter/material.dart';

import '../../core/routes.dart';
import '../offset/offset_screen.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  "Transaction: Track with these sources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                buttonStyle(
                  context,
                  "Account Aggregator",
                  MediaQuery.of(context).size.width,
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    fontSize: 20,
                  ),
                  () {
                    Navigator.of(context).pushNamed(OneRoute.account_aggregator);
                  },
                ),
                buttonStyle(
                  context,
                  "Credit Cards",
                  MediaQuery.of(context).size.width,
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "ReadexPro",
                    fontSize: 20,
                  ),
                  () {
                    Navigator.of(context).pushNamed(OneRoute.credit_card);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
