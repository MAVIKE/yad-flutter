import 'dart:async';

import 'package:yad/features/cart/models/models.dart';

abstract class CartRepo {
  Future<Cart> loadCart();
}
