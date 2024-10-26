import 'package:flutter/material.dart';

class TechCategory extends StatefulWidget {
  const TechCategory({super.key});

  @override
  State<TechCategory> createState() => _TechCategoryState();
}

class _TechCategoryState extends State<TechCategory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Tech")),
    );
  }
}
