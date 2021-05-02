import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/widgets/dish_card.dart';

class RestaurantCard extends StatelessWidget {

  final ImageProvider _photo;
  final String header;

  RestaurantCard({
    ImageProvider? photo,
    required this.header

  }) : _photo = photo ?? AssetImage('assets/restaurant_0.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10,
            child: ListTile(
              title: Container(
                width: 330,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: _photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subtitle: Text(this.header, style: TextStyle(fontSize: 36),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _somewhere,
                  ),
                );
              },
            )
        )
    );
  }
}