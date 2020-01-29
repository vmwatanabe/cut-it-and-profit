import 'package:flutter/material.dart';
import './goalsList.dart';
import './header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _newGoalName;
  TextEditingController _newGoalValue;

  @override
  void initState() {
    super.initState();
    _newGoalName = TextEditingController();
    _newGoalValue = TextEditingController();
  }

  @override
  void dispose() {
    _newGoalName.dispose();
    _newGoalValue.dispose();
    super.dispose();
  }

  Future<void> _showDialog() async {
    var dialogResponse = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: const Text('Create a new Goal'),
              children: <Widget>[
                Container(
                    color: Colors.red[300],
                    child: Column(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('Goal\'s name'),
                            TextField(
                              controller: _newGoalName,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Type your goal\'s name',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('Unitary value'),
                            TextField(
                              controller: _newGoalValue,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Type your goal\'s unitary value',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: const Text('Cancel'),
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: const Text('Confirm'),
                            ),
                          ],
                        )
                      ],
                    ))
              ]);
        });
    switch (dialogResponse) {
      case true:
        print('true');
        break;
      default:
        print(dialogResponse);
        _newGoalName.clear();
        _newGoalValue.clear();
        break;
    }
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
