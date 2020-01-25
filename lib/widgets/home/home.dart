import 'package:flutter/material.dart';
import './goalsList.dart';
import './header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: const Text('Select assignment'),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.red[300],
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Header(onAddClick: _showDialog),
              Expanded(
                child: GoalsList(),
              ),
            ],
          ),
        ));
  }
}
