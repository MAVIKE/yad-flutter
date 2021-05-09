import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OnChangedCallback = void Function(String);

class YadInput extends StatelessWidget {
  final OnChangedCallback? _onChanged;
  final String? _label;
  final String? _error;
  final bool? _obscureText;
  final double? _height;
  final double? _width;
  final TextStyle? _labelTextStyle;

  YadInput(
      {OnChangedCallback? onChanged,
      String? label,
      String? error,
      double? height,
      double? width,
      TextStyle? labelTextStyle,
      bool? obscureText})
      : _onChanged = onChanged,
        _labelTextStyle = labelTextStyle,
        _error = error,
        _height = height,
        _width = width,
        _obscureText = obscureText,
        _label = label;

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final inputTheme = theme.inputTheme;

    return SizedBox(
      width: _width,
      child: Column(
        children: [
          _label != null
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _label ?? "",
                    style: _labelTextStyle ?? inputTheme.labelTextStyle,
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: _height ?? inputTheme.height,
              width: _width,
              child: TextField(
                onChanged: _onChanged,
                obscureText: _obscureText ?? false,
                style: inputTheme.inputTextStyle,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: inputTheme.background,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 0),
                  labelText: _label,
                  labelStyle: inputTheme.hintTextStyle,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
            ),
          ),
          _error != null
              ? Text(
                  _error ?? "",
                  style: inputTheme.errorTextStyle,
                  overflow: TextOverflow.clip,
                )
              : Text("")
        ],
      ),
    );
  }
}
