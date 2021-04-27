part of 'light_theme.dart';

class LightProfileTheme implements IProfileTheme {
  @override
  Color get addressBackground => _orange;

  @override
  Color get addressForeground => _purple;

  @override
  IconData get expandIcon => Icons.settings;

  @override
  Color get expandIconColor => Colors.black;

  @override
  Color get userBackground => _yellow;

  @override
  Color get userForeground => _purple;

  @override
  Color get ordersBackground => _darkPink;

  @override
  Color get ordersForeground => _purple;

  @override
  Color get background => Colors.white;

  @override
  Color get foreground => _purple;
}
