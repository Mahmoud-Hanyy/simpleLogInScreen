import 'package:flutter/material.dart';
import 'package:login/modules/archived.dart';
import 'package:login/modules/tasks.dart';

import 'done.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> screens = [
     NewTasks(),
     DoneTasks(),
     ArchivedTasks(),
  ];
  List<String> titles = [
    "New Tasks",
    "Done Tasks",
    "Archived Tasks",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),

      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var name = await getName();
          print(name);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items:[
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return "Mohamed";
  }
}
