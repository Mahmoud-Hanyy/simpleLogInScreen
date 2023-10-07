import 'package:flutter/cupertino.dart';

class ArchivedTasks extends StatelessWidget {
  const ArchivedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Archived Tasks",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )
      ),
    );
  }
}
