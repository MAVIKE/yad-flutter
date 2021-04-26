import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {

  final String header;
  final String description;
  final bool isCountingDishes;
  final double dishCost;
  final ImageProvider _photo;

  DishCard({
    required this.header,
    required this.description,
    required this.isCountingDishes,
    required this.dishCost,
    ImageProvider? photo,
  }): _photo = photo ?? AssetImage('assets/food_example.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        child: ListTile(
            leading: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: _photo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(this.header),
            subtitle: Column(
              children: [Text(this.description),
                isCountingDishes? CountingDishes(dishCost: this.dishCost) :
                OrderedOrNot(dishCost: this.dishCost),
              ],
            ),
        ),
      ),
    );
  }
}

class CountingDishes extends StatefulWidget {

  final double dishCost;
  final int dishesCount;

  CountingDishes(
      {this.dishCost = 0.0, this.dishesCount = 0,
  });

  @override
  _CountingDishesState createState() => _CountingDishesState(dishCost, dishesCount);
}

class _CountingDishesState extends State<CountingDishes> {

  double dishCost;
  int dishesCount;

  _CountingDishesState(this.dishCost, this.dishesCount);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text((dishCost * dishesCount).toString()),
        FlatButton(
            onPressed: () {
              setState(() {
                dishesCount -= 1;
              });
            },
            child: const Text('-')
        ),
        FlatButton(
            onPressed: () {
              setState(() {
                dishesCount += 1;
              });
            },
            child: const Text('+')
        ),
        Text('$dishesCount'),
      ],
    );
  }
}

class OrderedOrNot extends StatefulWidget {

  final double dishCost;
  final bool isOrdered;

  OrderedOrNot(
      {this.dishCost = 0.0, this.isOrdered = false,
      });

  @override
  _OrderedOrNotState createState() => _OrderedOrNotState(dishCost, isOrdered);
}

class _OrderedOrNotState extends State<OrderedOrNot> {

  double dishCost;
  bool isOrdered;

  _OrderedOrNotState(this.dishCost, this.isOrdered);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$dishCost'),
        FlatButton(
            onPressed: () {
              setState(() {
                this.isOrdered = !this.isOrdered;
              });
            },
            child: this.isOrdered? Text('Ordered') : Text('Order')
        )
      ],
    );
  }
}