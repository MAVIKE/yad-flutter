import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/cart/bloc/cart_list_bloc.dart';
import 'package:yad/features/payment/view/payment_page.dart';
import 'package:yad/widgets/yad_scaffold.dart';

class CartProceedPart extends StatefulWidget {
  @override
  _CartProceedPart createState() => _CartProceedPart();
}

class _CartProceedPart extends State<CartProceedPart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocBuilder<CartListBloc, CartListState>(builder: (context, state) {
      switch (state.status) {
        case CartListStatus.success:
          if (state.cart.items.isEmpty) {
            return const Center(child: Text('Your cart is empty'));
          }
          return Container(
              decoration: theme.cartTheme.decorationProceed,
              height: theme.cartTheme.proceedHeight,
              alignment: Alignment.bottomCenter,
              padding: theme.cartTheme.paddingProceed,
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: theme.cartTheme.marginTextTotal,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Total: ",
                                  style: theme.cartTheme.styleButtonText)),
                        ),
                        Container(
                          margin: theme.cartTheme.marginTotalValue,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("\$ ${state.cart.totalPrice}",
                                  style: theme.cartTheme.styleButtonText)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: theme.cartTheme.buttonHeight,
                          width: theme.cartTheme.buttonWidth,
                          decoration: theme.cartTheme.decorationButton,
                          margin: theme.cartTheme.marginButton,
                          child: TextButton(
                              onPressed: () => {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context) =>
                                  YadScaffold(
                                  isCourier: false,
                                  body: PaymentPage(items: state.cart.items)))
                                )
                              },
                              child: Text("Proceed",
                                  style: theme.cartTheme.styleButtonText)),
                        )
                      ],
                    )
                  ],
                ),
              ));
        default:
          return const Center(child: CircularProgressIndicator());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
