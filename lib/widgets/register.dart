import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';

class RegistrationCard extends StatelessWidget {
  final LightTheme _lightTheme;
  final _AddressData _addressData;
  final _UserData _userData;

  RegistrationCard()
      : _lightTheme = LightTheme(),
        _addressData = _AddressData(),
        _userData = _UserData();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _lightTheme.registrationCardTheme.cardHeight,
      width: _lightTheme.registrationCardTheme.cardWidth,
      decoration: _lightTheme.registrationCardTheme.decorationCard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: _lightTheme.registrationCardTheme.inputWidth,
              child: Container(
                  margin: _lightTheme.registrationCardTheme.marginTopLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: _lightTheme
                            .registrationCardTheme.textStyleHeaderInput,
                      ),
                      SizedBox(
                          height: _lightTheme.registrationCardTheme.inputHeight,
                          child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _userData.setName(text);
                            },
                          ))
                    ],
                  ))),
          SizedBox(
            width: _lightTheme.registrationCardTheme.inputWidth,
            child: Container(
                margin: _lightTheme.registrationCardTheme.marginLeftInput,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone number',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHeaderInput,
                    ),
                    SizedBox(
                        height: _lightTheme.registrationCardTheme.inputHeight,
                        child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _userData.setPhoneNumber(text);
                            })),
                  ],
                )),
          ),
          SizedBox(
              width: _lightTheme.registrationCardTheme.inputWidth,
              child: Container(
                  margin: _lightTheme.registrationCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: _lightTheme
                            .registrationCardTheme.textStyleHeaderInput,
                      ),
                      SizedBox(
                          height: _lightTheme.registrationCardTheme.inputHeight,
                          child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _userData.setPassword1(text);
                            },
                          ))
                    ],
                  ))),
          SizedBox(
              width: _lightTheme.registrationCardTheme.inputWidth,
              child: Container(
                  margin: _lightTheme.registrationCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: _lightTheme
                            .registrationCardTheme.textStyleHeaderInput,
                      ),
                      SizedBox(
                          height: _lightTheme.registrationCardTheme.inputHeight,
                          child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _userData.setPassword2(text);
                            },
                          ))
                    ],
                  ))),
          SizedBox(
            width: _lightTheme.registrationCardTheme.inputWidth,
            child: Container(
                margin: _lightTheme.registrationCardTheme.marginLeftInput,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHeaderInput,
                    ),
                    SizedBox(
                        height: _lightTheme.registrationCardTheme.inputHeight,
                        child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _addressData.setCity(text);
                            }))
                  ],
                )),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Street',
                    style:
                        _lightTheme.registrationCardTheme.textStyleHeaderInput,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    child: Text(
                      'House number',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHouseNumber,
                    ),
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: _lightTheme.registrationCardTheme.streetInputWidth,
                      height: _lightTheme.registrationCardTheme.inputHeight,
                      child: TextField(
                          decoration:
                              _lightTheme.registrationCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _addressData.setStreet(text);
                          })),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: SizedBox(
                        width: _lightTheme
                            .registrationCardTheme.houseNumberInputWidth,
                        height: _lightTheme.registrationCardTheme.inputHeight,
                        child: TextField(
                            decoration: _lightTheme
                                .registrationCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _addressData.setHouseNumber(text);
                            })),
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Building',
                    style:
                        _lightTheme.registrationCardTheme.textStyleHouseNumber,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Floor',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHouseNumber,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 48),
                    child: Text(
                      'Flat',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHouseNumber,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Entrance',
                      style: _lightTheme
                          .registrationCardTheme.textStyleHouseNumber,
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: _lightTheme.registrationCardTheme.smallInputWidth,
                    height: _lightTheme.registrationCardTheme.inputHeight,
                    child: TextField(
                        decoration:
                            _lightTheme.registrationCardTheme.inputDecoration,
                        onSubmitted: (text) {
                          _addressData.setBuilding(text);
                        })),
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: SizedBox(
                      width: _lightTheme.registrationCardTheme.smallInputWidth,
                      height: _lightTheme.registrationCardTheme.inputHeight,
                      child: TextField(
                          decoration:
                              _lightTheme.registrationCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _addressData.setFloor(text);
                          })),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: SizedBox(
                      width: _lightTheme.registrationCardTheme.smallInputWidth,
                      height: _lightTheme.registrationCardTheme.inputHeight,
                      child: TextField(
                          decoration:
                              _lightTheme.registrationCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _addressData.setFlat(text);
                          })),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: SizedBox(
                      width: _lightTheme.registrationCardTheme.smallInputWidth,
                      height: _lightTheme.registrationCardTheme.inputHeight,
                      child: TextField(
                          decoration:
                              _lightTheme.registrationCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _addressData.setEntrance(text);
                          })),
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: _lightTheme.registrationCardTheme.buttonWidth,
                  height: _lightTheme.registrationCardTheme.buttonHeight,
                  decoration:
                      _lightTheme.registrationCardTheme.decorationButton,
                  margin: _lightTheme.registrationCardTheme.marginButton,
                  child: TextButton(
                      onPressed: () {
                        if (_addressData.isAddressDataCorrect() &&
                            _userData.isUserDataCorrect()) {
                          //регистрация
                        }
                      },
                      child: Text(
                        'Register',
                        style:
                            _lightTheme.registrationCardTheme.textStyleButton,
                      ))))
        ],
      ),
    );
  }
}

class _AddressData {
  String _city;
  String _street;
  String _houseNumber;
  String _building;
  String _floor;
  String _flat;
  String _entrance;

  _AddressData(
      {String? city,
      String? street,
      String? houseNumber,
      String? building,
      String? floor,
      String? flat,
      String? entrance})
      : _city = city ?? 'Moscow',
        _street = street ?? 'Tverskaya street',
        _houseNumber = houseNumber ?? '5',
        _building = building ?? '2',
        _floor = floor ?? '1',
        _flat = flat ?? '52',
        _entrance = entrance ?? '1';

  bool isAddressDataCorrect() {
    return isCity() &&
        isStreet() &&
        isHouseNumber() &&
        isBuilding() &&
        isFlat() &&
        isFloor() &&
        isEntrance();
  }

  void setCity(String city) {
    _city = city;
  }

  void setStreet(String street) {
    _street = street;
  }

  void setHouseNumber(String houseNumber) {
    _houseNumber = houseNumber;
  }

  void setBuilding(String building) {
    _building = building;
  }

  void setFloor(String floor) {
    _floor = floor;
  }

  void setFlat(String flat) {
    _flat = flat;
  }

  void setEntrance(String entrance) {
    _entrance = _entrance;
  }

  bool isCity() {
    return _city.length != 0;
  }

  bool isStreet() {
    return _street.length != 0;
  }

  bool isHouseNumber() {
    return _houseNumber.length != 0 && int.parse(_houseNumber) is int;
  }

  bool isBuilding() {
    return _building.length != 0 && int.parse(_building) is int;
  }

  bool isFloor() {
    return _floor.length != 0 && int.parse(_floor) is int;
  }

  bool isFlat() {
    return _flat.length != 0 && int.parse(_flat) is int;
  }

  bool isEntrance() {
    return _entrance.length != 0 && int.parse(_entrance) is int;
  }

  String? getCity() {
    return isCity() ? _city : null;
  }

  String? getStreet() {
    return isStreet() ? _street : null;
  }

  String? getHouseNumber() {
    return isHouseNumber() ? _houseNumber : null;
  }

  String? getBuilding() {
    return isBuilding() ? _building : null;
  }

  String? getFloor() {
    return isFloor() ? _floor : null;
  }

  String? getFlat() {
    return isFlat() ? _flat : null;
  }

  String? getEntrance() {
    return isEntrance() ? _entrance : null;
  }
}

class _UserData {
  String _name;
  String _phoneNumber;
  String _password1;
  String _password2;

  _UserData(
      {String? name, String? phoneNumber, String? password1, String? password2})
      : _name = name ?? 'Andrei',
        _phoneNumber = phoneNumber ?? '89169056645',
        _password1 = password1 ?? 'passwordexample',
        _password2 = password2 ?? 'passwordexample';

  bool isUserDataCorrect() {
    return isName() && isPhoneNumber() && isPassword1() && isPassword2();
  }

  void setName(String name) {
    _name = name;
  }

  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
  }

  void setPassword1(String password1) {
    _password1 = password1;
  }

  void setPassword2(String password2) {
    _password2 = password2;
  }

  bool isName() {
    return _name.length != 0 && _name.length < 100;
  }

  bool isPhoneNumber() {
    return (_phoneNumber.length == 11) && (int.parse(_phoneNumber) is int);
  }

  bool isPassword1() {
    return (_password1.length > 10);
  }

  bool isPassword2() {
    return _password2.length > 10 && (_password2 == _password1);
  }

  String? getName() {
    return isName() ? _name : null;
  }

  String? getPhoneNumber() {
    return isPhoneNumber() ? _phoneNumber : null;
  }

  String? getPassword1() {
    return isPassword1() ? _password1 : null;
  }

  String? getPassword2() {
    return isPassword2() ? _password2 : null;
  }
}
