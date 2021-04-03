import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final IconData _iconData;
  final String _title;
  final Function _onTap;

  Option(this._iconData, this._title, this._onTap);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        _iconData,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(_title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey.shade300,
      ),
      onTap: _onTap,
    );
  }
}