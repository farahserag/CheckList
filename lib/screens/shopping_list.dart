import 'package:checklist/models/colors.dart';
import 'package:checklist/models/task_data.dart';
import 'package:checklist/screens/add_task_scr.dart';
import 'package:checklist/screens/home.dart';
import 'package:checklist/widgets/navigate.dart';
import 'package:checklist/widgets/task_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddTaskScreen((newTextTitle) {
                            // setState(() {
                            //   tasks.add(Task(name: newTextTitle));
                            //   Navigator.pop(context);
                            // });
                          })),
                    ));
          },
          backgroundColor: const Color.fromARGB(255, 246, 69, 69),
          child: const Icon(Icons.add),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 99, 99),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // centerTitle: true,
            title: const Text(
              'Shopping List',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            leading: IconButton(
                onPressed: () {
                  navigatTo(context, const Home());
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: w,
                  size: 30,
                ))),
        body: Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${Provider.of<TaskData>(context).tasks.length} Tasks',
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const TaskList(),
              ))
            ],
          ),
        ));
  }
}
