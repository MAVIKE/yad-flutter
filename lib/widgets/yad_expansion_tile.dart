import 'package:flutter/material.dart';

class YadExpansionTile extends StatelessWidget {
  final String title;
  final Widget _trailing;
  final Widget _body;

  YadExpansionTile(
    {
      required this.title,
      Widget? trailing,
      Widget? body,
    }) : _trailing = trailing ?? Icon(Icons.settings), _body = body ?? Container();
  
  @override
  Widget build(BuildContext context) => Container(
    color: Colors.orange,
    child: ExpansionTile(
      title: Text(this.title, 
        style: TextStyle(
          color: Colors.deepPurple, 
          fontWeight: FontWeight.bold
        )),
      trailing: _trailing,
      children: [_body],
    ),
  );
}
