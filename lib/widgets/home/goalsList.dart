import 'package:flutter/material.dart';
import './goal.dart';

class GoalsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 20,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return Goal(title: 'Objetivo 1', description: 'Sera?');
      },
    );
  }
}
