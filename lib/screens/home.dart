import 'package:checklist/models/colors.dart';
import 'package:checklist/screens/school_tasks.dart';
import 'package:checklist/screens/shopping_list.dart';
import 'package:checklist/screens/task_screen.dart';
import 'package:checklist/widgets/custom_container.dart';
import 'package:checklist/widgets/drawer.dart';
import 'package:checklist/widgets/navigate.dart';
import 'package:checklist/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: dg),
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: dg,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeTextField(
                hintTxt: 'Search tasks',
                prefixIcon: Icon(
                  Icons.search,
                  color: g,
                  size: 24,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                  child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,

                  // childAspectRatio: 1.35 / 2,
                ),
                children: [
                  GestureDetector(
                      onTap: () => navigatTo(context, const TaskScreen()),
                      // navigateAndFinish(context, const TaskScreen()),
                      child: CustomContainer(
                          color: Colors.deepOrange[200],
                          //color: Color.fromARGB(255, 255, 147, 93),

                          icon: Icons.favorite,
                          text: "Daily Tasks")),
                  GestureDetector(
                    onTap: () => navigatTo(context, const SchoolTasks()),
                    child: CustomContainer(
                        color: Colors.blueAccent[100],
                        //  color: Color.fromARGB(255, 119, 221, 196),
                        icon: Icons.school_rounded,
                        text: "School Tasks"),
                  ),
                  GestureDetector(
                    onTap: () => navigatTo(context, const ShoppingList()),
                    child: CustomContainer(
                        color: const Color.fromARGB(255, 255, 99, 99),
                        icon: Icons.shopping_cart,
                        text: "Shopping List"),
                  ),
                  CustomContainer(
                      color: const Color.fromARGB(255, 202, 199, 199),
                      icon: Icons.add_box_rounded,
                      text: 'Add Task'),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
