import 'package:flutter/material.dart';

typedef Widget OnExpansionChangedBuilder(BuildContext ctx, bool isExpanded, _);
typedef void OnExpansionChangedCallback(bool isExpanded);

class YadExpansionTile extends StatelessWidget {
  final OnExpansionChangedBuilder _titleBuilder;
  final OnExpansionChangedBuilder _trailingBuilder;
  final OnExpansionChangedCallback _onExpansionChanged;
  final Widget _body;
  final ValueNotifier<bool> _collapsed;
  final Decoration _decoration;

  static Widget emptyBuilder(BuildContext ctx, bool isExpanded, _) {
    return Container();
  }

  static void emptyCallback(bool isExpanded) {}

  YadExpansionTile({
    OnExpansionChangedBuilder? titleBuilder,
    OnExpansionChangedBuilder? trailingBuilder,
    OnExpansionChangedCallback? onExpansionChanged,
    Widget? body,
    Decoration? decoration,
    bool collapsed = true,
  })  : _titleBuilder = titleBuilder ?? emptyBuilder,
        _trailingBuilder = trailingBuilder ?? emptyBuilder,
        _onExpansionChanged = onExpansionChanged ?? emptyCallback,
        _body = body ?? Container(),
        _collapsed = ValueNotifier(collapsed),
        _decoration = decoration ?? BoxDecoration();

  @override
  Widget build(BuildContext context) => Container(
        decoration: _decoration,
        child: ExpansionTile(
          title: ValueListenableBuilder(
              valueListenable: _collapsed, builder: _titleBuilder),
          trailing: ValueListenableBuilder(
              valueListenable: _collapsed, builder: _trailingBuilder),
          children: [_body],
          onExpansionChanged: (collapsed) {
            _collapsed.value = !collapsed;
            _onExpansionChanged(collapsed);
          },
        ),
      );
}
