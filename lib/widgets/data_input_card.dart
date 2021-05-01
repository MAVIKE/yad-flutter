import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';

class DataInputCard extends StatelessWidget {

  final LightTheme _lightTheme;
  final _CardData _cardData;


  DataInputCard(): _lightTheme = LightTheme(), _cardData = _CardData();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: _lightTheme.dataInputCardTheme.cardHeight,
      width: _lightTheme.dataInputCardTheme.cardWidth,
      decoration: _lightTheme.dataInputCardTheme.decorationCard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: _lightTheme.dataInputCardTheme.leftInputWidth,
              child:
              Container(
                  margin: _lightTheme.dataInputCardTheme.marginTopLeftInput,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card number',
                      style: _lightTheme.dataInputCardTheme.textStyleHeaderInput,
                    ),
                    SizedBox(
                        height: _lightTheme.dataInputCardTheme.inputHeight,
                        child: TextField(
                          decoration:
                          _lightTheme.dataInputCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _cardData.setCardNumber(text);
                          },
                       )
                    )
                  ],
                )
              )
          ),
          SizedBox(
            width: _lightTheme.dataInputCardTheme.leftInputWidth,
            child:
            Container(
              margin: _lightTheme.dataInputCardTheme.marginLeftInput,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Expiration date',
                    style: _lightTheme.dataInputCardTheme.textStyleHeaderInput,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width:
                        _lightTheme.dataInputCardTheme.expirationDateInputWidth,
                        height: _lightTheme.dataInputCardTheme.inputHeight,
                        child: TextField(
                          decoration:
                          _lightTheme.dataInputCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _cardData.setMonthNumber(text);
                            }
                        )
                    ),
                    SizedBox(
                        width:
                        _lightTheme.dataInputCardTheme.expirationDateInputWidth,
                        height: _lightTheme.dataInputCardTheme.inputHeight,
                        child: TextField(
                          decoration:
                          _lightTheme.dataInputCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _cardData.setYearNumber(text);
                            }
                        )
                    )
                  ],
                )
                ],
              )
            ),
          ),
          SizedBox(
            width: _lightTheme.dataInputCardTheme.leftInputWidth,
            child:
            Container(
                margin: _lightTheme.dataInputCardTheme.marginLeftInput,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card holder',
                      style:
                      _lightTheme.dataInputCardTheme.textStyleHeaderInput,
                    ),
                    SizedBox(
                        height: _lightTheme.dataInputCardTheme.inputHeight,
                        child: TextField(
                          decoration:
                          _lightTheme.dataInputCardTheme.inputDecoration,
                            onSubmitted: (text) {
                              _cardData.setCardHolder(text);
                            }
                        )
                    )
                  ],
              )
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                margin: EdgeInsets.only(right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CVC/CVV',
                    style: _lightTheme.dataInputCardTheme.textStyleHeaderInput,
                  ),
                  SizedBox(
                      width: _lightTheme.dataInputCardTheme.rightInputWidth,
                      height: _lightTheme.dataInputCardTheme.inputHeight,
                      child: TextField(
                        decoration: _lightTheme.dataInputCardTheme.inputDecoration,
                          onSubmitted: (text) {
                            _cardData.setCvcCvv(text);
                          }
                      )
                  )
                ],
              )
            )
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                width: _lightTheme.dataInputCardTheme.buttonWidth,
                height: _lightTheme.dataInputCardTheme.buttonHeight,
                decoration: _lightTheme.dataInputCardTheme.decorationButton,
                margin: _lightTheme.dataInputCardTheme.marginButton,
                child: TextButton(
                  onPressed: () {
                    if (_cardData.isCardDataCorrect())
                    {
                      //переходим к оплате
                    }
                  },
                  child: Text(
                    'Pay',
                    style: _lightTheme.dataInputCardTheme.textStyleButton,
                  )
                )
              )
          )
        ],
      ),
    );
  }
}

class _CardData {

  String _cardNumber;
  String _monthNumber;
  String _yearNumber;
  String _cardHolder;
  String _cvcCvv;

  _CardData({String? cardNumber, String? monthNumber, String? yearNumber,
    String? cardHolder, String? cvcCvv}) :
        _cardNumber = cardNumber ?? '1234567890123456',
        _monthNumber = monthNumber ?? '00',
        _yearNumber = yearNumber ?? '00',
        _cardHolder = cardHolder ?? "",
        _cvcCvv = cvcCvv ?? '0';



  void setCardNumber(String cardNumber) {
    _cardNumber = cardNumber;
  }

  void setMonthNumber(String monthNumber) {
    _monthNumber = monthNumber;
  }

  void setYearNumber(String yearNumber) {
    _yearNumber = yearNumber;
  }

  void setCardHolder(String cardHolder) {
    _cardHolder = cardHolder;
  }

  void setCvcCvv(String cvcCvv) {
    _cvcCvv = cvcCvv;
  }

  bool isCardNumberCorrect() {
    return (_cardNumber.length == 16) && (int.parse(_cardNumber) is int);
  }

  bool isMonthNumberCorrect() {
    bool res = false;
    int? month = int.parse(_monthNumber);
    if (month is int) {
      return (month > 0) && (month < 13);
    }
    return res;
  }

  bool isYearNumberCorrect() {
    bool res = false;
    int? year = int.parse(_monthNumber);
    if (year is int) {
      return (year > 0) && (year < 99);
    }
    return res;
  }

  bool isCardHolder() {
    return _cardHolder.length != 0;
  }

  bool isCvcCvv() {
    int cvcCvv = int.parse(_cvcCvv);
    return (cvcCvv is int) && (cvcCvv >= 100) && (cvcCvv < 1000);
  }

  bool isCardDataCorrect() {
    return isCardNumberCorrect() && isMonthNumberCorrect() &&
        isYearNumberCorrect() && isCardHolder() && isCvcCvv();
  }

  String? getCardNumber() {
    return isCardNumberCorrect()? _cardNumber : null;
  }

  String? getMonthNumber() {
    return isMonthNumberCorrect()? _monthNumber : null;
  }

  String? getYearNumber() {
    return isYearNumberCorrect()? _yearNumber : null;
  }

  String? getCardHolder() {
    return isCardHolder()? _cardHolder : null;
  }

  String? getCvcCvv() {
    return isCvcCvv()? _cvcCvv : null;
  }

}