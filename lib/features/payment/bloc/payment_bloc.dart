import 'dart:async';

import 'package:yad/features/cart/models/models.dart';
import 'package:yad/features/make_payment/make_payment.dart';
import 'package:yad/features/payment/payment.dart';
import 'package:yad/features/payment/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc({required MakePaymentBloc makePaymentBloc,
    required List<OrderItem> items})
      : _makePaymentBloc = makePaymentBloc,
        super(PaymentState(items: (items)));

  final MakePaymentBloc _makePaymentBloc;

  @override
  Stream<PaymentState> mapEventToState(
    PaymentEvent event,
  ) async* {
    if (event is PaymentCardNumberChanged) {
      yield _mapCardNumberChangedToState(event, state);
    } else if (event is PaymentExpirationMonthChanged) {
      yield _mapExpirationMonthChangedToState(event, state);
    } else if (event is PaymentExpirationYearChanged) {
      yield _mapExpirationYearChangedToState(event, state);
    } else if (event is PaymentCardHolderChanged) {
      yield _mapCardHolderChangedToState(event, state);
    } else if (event is PaymentCvcCvvChanged) {
      yield _mapCvcCvvChangedToState(event, state);
    } else if (event is PaymentSubmitted) {
      yield* _mapPaymentSubmittedToState(event, state);
    }
  }

  PaymentState _mapCardNumberChangedToState(
    PaymentCardNumberChanged event,
    PaymentState state,
  ) {
    final cardNumber = CardNumber.dirty(event.cardNumber);
    return state.copyWith(
      cardNumber: cardNumber,
      status: Formz.validate([
        cardNumber,
        state.expirationMonth,
        state.expirationYear,
        state.cardHolder,
        state.cvcCvv
      ]),
    );
  }

  PaymentState _mapExpirationMonthChangedToState(
    PaymentExpirationMonthChanged event,
    PaymentState state,
  ) {
    final expirationMonth = ExpirationMonth.dirty(event.expirationMonth);
    return state.copyWith(
      expirationMonth: expirationMonth,
      status: Formz.validate([
        state.cardNumber,
        expirationMonth,
        state.expirationYear,
        state.cardHolder,
        state.cvcCvv
      ]),
    );
  }

  PaymentState _mapExpirationYearChangedToState(
    PaymentExpirationYearChanged event,
    PaymentState state,
  ) {
    final expirationYear = ExpirationYear.dirty(event.expirationYear);
    return state.copyWith(
      expirationYear: expirationYear,
      status: Formz.validate([
        state.cardNumber,
        state.expirationMonth,
        expirationYear,
        state.cardHolder,
        state.cvcCvv
      ]),
    );
  }

  PaymentState _mapCardHolderChangedToState(
    PaymentCardHolderChanged event,
    PaymentState state,
  ) {
    final cardHolder = CardHolder.dirty(event.cardHolder);
    return state.copyWith(
      cardHolder: cardHolder,
      status: Formz.validate([
        state.cardNumber,
        state.expirationMonth,
        state.expirationYear,
        cardHolder,
        state.cvcCvv
      ]),
    );
  }

  PaymentState _mapCvcCvvChangedToState(
    PaymentCvcCvvChanged event,
    PaymentState state,
  ) {
    final cvcCvv = CvcCvv.dirty(event.cvcCvv);
    return state.copyWith(
      cvcCvv: cvcCvv,
      status: Formz.validate([
        state.cardNumber,
        state.expirationMonth,
        state.expirationYear,
        state.cardHolder,
        cvcCvv
      ]),
    );
  }

  Stream<PaymentState> _mapPaymentSubmittedToState(
    PaymentSubmitted event,
    PaymentState state,
  ) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      try {
        _makePaymentBloc.pay(
          state.cardNumber.value,
          state.expirationMonth.value,
          state.expirationYear.value,
          state.cardHolder.value,
          state.cvcCvv.value,
          state.items
        );
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } on Exception catch (_) {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
}
