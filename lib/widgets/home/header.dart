import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[500]),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Watanabe\'s App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          )
        ],
      ),
    );
  }
}
