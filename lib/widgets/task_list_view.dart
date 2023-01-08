import 'package:checklist/models/task_data.dart';
import 'package:checklist/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              textTitle: taskData.tasks[index].name,
              checkBoxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          });
    });
  }
}

////// instead of using Provider.of<TaskData>(context) everytime we can use CONSUMER insted////
// return ListView.builder(
//         itemCount: Provider.of<TaskData>(context).tasks.length,
//         itemBuilder: (context, index) {
//           return TaskTile(
//             isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
//             textTitle: Provider.of<TaskData>(context).tasks[index].name,
//             checkBoxChange: (newValue) {
//               // setState(() {
//               //   Provider.of<TaskData>(context).tasks[index].doneChange();
//               // });
//             },
//           );
//         });