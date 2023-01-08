import 'package:checklist/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  const AddTaskScreen(this.addTaskCallBack, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextField(
            cursorColor: Colors.black, //<-- SEE HERE
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 3),
              ),
            ),

            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTextTitle = newText;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTextTitle!);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              //  foregroundColor: Colors.white
            ),
            child: const Text(
              'Add',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
