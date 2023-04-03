import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('the recipe'),),
      body: Center(
        child: Text(
          'the recipe for this category are',
        ),
      ),
    );
  }
}
