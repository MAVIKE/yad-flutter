import 'dart:async';

//import 'package:yad/core/domain/repos/register/register_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import 'package:shared_preferences/shared_preferences.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(RegisterState initialState, {initialState2}) : super(initialState);

/*  RegisterBloc({
    required RegisterRepo registerRepo,
  })   : _registerRepo = registerRepo,
        super(const RegisterState.unknown()) {
    (() async {})();
  }
  final RegisterRepo _registerRepo;*/

  void register(
      String name,
      String phoneNumber,
      String password1,
      String password2,
      String city,
      String street,
      String houseNumber,
      String building,
      String floor,
      String flat,
      String entrance) {}

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
/*
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
 */
}
