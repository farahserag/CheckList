import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String textTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() listTileDelete;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.textTitle,
    required this.checkBoxChange,
    required this.listTileDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),

      /// Global state to connect checkbox with the text ///
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.black,
        onChanged: checkBoxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
