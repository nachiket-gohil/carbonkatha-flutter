import 'package:flutter/material.dart';

class TransportCategory extends StatefulWidget {
  const TransportCategory({super.key});

  @override
  State<TransportCategory> createState() => _TransportCategoryState();
}

class _TransportCategoryState extends State<TransportCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Starting Point",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Destination Point",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Adult  1   +"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    viewchart = true;
                  });
                },
                child: const Text(" SEARCH "),
              ),
              Visibility(
                visible: viewchart,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  color: const Color(0xFF053644),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      thisTile("EV", "20 Kg CO2", const Color(0xFF41CC8B)),
                      thisTile("Bus", "30 Kg CO2", const Color(0xFF41CC8B)),
                      thisTile("Airplane", "40 Kg CO2", const Color(0xFFFFB02E)),
                      thisTile("Diesel", "50 Kg CO2", const Color(0xFFFFB02E)),
                      thisTile("Train", "60 Kg CO2", const Color(0xFFF8312F)),
                      thisTile("Petrol Car", "60 Kg CO2", const Color(0xFFF8312F)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool viewchart = false;
}

Widget thisTile(String textA, String textB, Color color) {
  return Container(
    height: 50,
    padding: const EdgeInsets.all(14),
    margin: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textA,
          style: const TextStyle(
            fontFamily: "ReadexPro",
            fontSize: 17,
          ),
        ),
        Text(
          textB,
          style: const TextStyle(
            fontFamily: "ReadexPro",
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}
