import 'package:checklist/models/task_class.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go for a walk'),
    Task(name: 'go shopping'),
    Task(name: 'read a book'),
  ];

  void addTask(String newTextTitle) {
    tasks.add(Task(name: newTextTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
