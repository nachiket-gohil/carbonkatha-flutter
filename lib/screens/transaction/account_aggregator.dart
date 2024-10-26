import 'dart:core';

import 'package:flutter/material.dart';

import '../../core/routes.dart';
import '../offset/project_details.dart';

class AccountAggregator extends StatefulWidget {
  const AccountAggregator({super.key});

  @override
  State<AccountAggregator> createState() => _AccountAggregatorState();
}

class _AccountAggregatorState extends State<AccountAggregator> {
  List<ListDataa>? customData;

  TextEditingController itemControl = TextEditingController();
  TextEditingController categoryControl = TextEditingController();
  TextEditingController amountControl = TextEditingController();

  @override
  void initState() {
    customData = [
      ListDataa(
          date: "22 Oct", title: "Nike Shoes", type: "Fashion", amount: "5000/-", isSpend: true),
      ListDataa(
          date: "22 Oct", title: "Wardrobe Repair", type: "Bill", amount: "400/-", isSpend: true),
      ListDataa(
          date: "23 Oct", title: "Dividend", type: "Equity", amount: "3000/-", isSpend: false),
      ListDataa(
          date: "24 Oct", title: "Cashback", type: "E-Commerce", amount: "500/-", isSpend: false),
      ListDataa(
          date: "24 Oct", title: "Club Fees", type: "Lifestyle", amount: "15000/-", isSpend: true),
      ListDataa(
          date: "25 Oct", title: "10th Salary ", type: "UPI", amount: "50,000/-", isSpend: false),
      ListDataa(
          date: "26 Oct", title: "Gift shop", type: "Lifestyle", amount: "7000/-", isSpend: true),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          header(
            context,
            "Account Aggregator",
            "Fetched from your Bank transactions",
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
                  customData!.length,
                  (index) {
                    return ListTile(
                      tileColor: const Color(0xFFDAEE87),
                      minLeadingWidth: 50,
                      onTap: () {
                        print("CLICKING");
                        // Create the controller.
                        itemControl = TextEditingController(text: customData![index].title!);
                        categoryControl = TextEditingController(text: customData![index].type!);
                        amountControl = TextEditingController(text: customData![index].amount!);

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Update Details"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: itemControl,
                                    decoration: const InputDecoration(
                                      hintText: "Enter Item Name",
                                      isDense: true,
                                    ),
                                  ),
                                  TextFormField(
                                    controller: categoryControl,
                                    decoration: const InputDecoration(
                                      hintText: "Enter Category",
                                      isDense: true,
                                    ),
                                  ),
                                  TextFormField(
                                    controller: amountControl,
                                    decoration: const InputDecoration(
                                      hintText: "Enter Amount",
                                      isDense: true,
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      customData![index].title = itemControl.text;
                                      customData![index].type = categoryControl.text;
                                      customData![index].amount = amountControl.text;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Update"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      leading: Text(
                        customData![index].date!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                      title: Text(
                        customData![index].title!,
                        style: const TextStyle(fontFamily: "ReadexPro"),
                      ),
                      subtitle: Text(
                        customData![index].type!,
                        style: const TextStyle(fontFamily: "NotoSans"),
                      ),
                      trailing: Text(
                        "Rs. ${customData![index].amount!}",
                        style: TextStyle(
                          fontSize: 18,
                          color: customData![index].isSpend! ? Colors.red : Colors.green,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            OneRoute.main_screen,
            (Route<dynamic> route) => false,
          );
        },
        child: const Text('Submit'),
      ),
    );
  }
}

class ListDataa {
  String? date;
  String? title;
  String? type;
  String? amount;
  bool? isSpend;

  ListDataa({
    this.date,
    this.title,
    this.type,
    this.amount,
    this.isSpend,
  });
}
