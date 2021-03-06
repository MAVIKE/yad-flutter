import 'package:flutter/material.dart';
import 'package:yad/features/profile/view/profile_page.dart';
import 'package:yad/features/restaurant_list/view/restaurant_list_page.dart';
import 'package:yad/widgets/yad_scaffold.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        YadScaffold(body: ProfilePage()),
        YadScaffold(body: RestaurantListPage()),
      ],
    );
  }
}
