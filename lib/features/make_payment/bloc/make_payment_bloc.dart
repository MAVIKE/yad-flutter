import 'dart:async';

import 'package:yad/core/domain/repos/make_payment/make_payment_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'make_payment_event.dart';
part 'make_payment_state.dart';

class MakePaymentBloc extends Bloc<MakePaymentEvent, MakePaymentState> {
  MakePaymentBloc({
    required MakePaymentRepo makePaymentRepo,
  })   : _makePaymentRepo = makePaymentRepo,
        super(const MakePaymentState.unknown()) {
    (() async {
      final instance = await SharedPreferences.getInstance();
      final String? paymentResult = instance.getString("paymentResult");
      if (paymentResult == 'Approved') {
        payApproved();
      } else {
        payFailed();
      }
    })();
  }

  final MakePaymentRepo _makePaymentRepo;

  void pay(String cardNumber, String expirationMonth, String expirationYear,
      String cardHolder, String cvcCvv) {
    add(MakePaymentPayRequested(cardNumber, expirationMonth, expirationYear,
        cardHolder, cvcCvv));
  }

  void payApproved() {
    add(MakePaymentPayApproved());
  }

  void payFailed() {
    add(MakePaymentPayFailed());
  }

  @override
  Stream<MakePaymentState> mapEventToState(
      MakePaymentEvent event,
      ) async* {
    if (event is MakePaymentPayRequested) {
      yield MakePaymentState.paymentInProgress();
      yield await _mapMakePaymentPayRequested(event);
    } else if (event is MakePaymentPayApproved) {
      yield MakePaymentState.payApproved();
    } else if (event is MakePaymentPayFailed) {
      yield MakePaymentState.payFailed();
    }
  }

  Future<MakePaymentState> _mapMakePaymentPayRequested(MakePaymentPayRequested
  event) async {
    return await _makePaymentRepo
        .pay(cardNumber: event.cardNumber, expirationMonth: event.expirationMonth,
        expirationYear: event.expirationYear, cardHolder: event.cardHolder,
        cvcCvv: event.cvcCvv)
        .then((_) => MakePaymentState.payApproved(),
        onError: (_) => MakePaymentState.payFailed());
  }
}