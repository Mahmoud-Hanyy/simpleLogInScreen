import 'package:flutter/cupertino.dart';

class DoneTasks extends StatelessWidget {
  const DoneTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Done Tasks",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )
      ),
    );
  }
}
