import 'package:flutter/material.dart';
import 'package:yad/widgets/dish_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Test"),
          ),
          body: ListView.builder(itemBuilder: (contect, index) {
            return DishCard(
                header: "header",
                description: "Description",
                isCountingDishes: true,
                dishCost: 100);
          })),
    );
  }
}
