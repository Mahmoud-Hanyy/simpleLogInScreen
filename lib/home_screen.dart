import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          leading:IconButton(onPressed: (){
          },icon: const Icon(Icons.menu)),

          title: const Text("Title"),
          centerTitle: true,
          actions: const [Icon(Icons.search),Icon(Icons.more_vert)],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.00),color: Colors.black,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
              children: [
               const Image(
                    image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/en/1/19/Tony_Montana_in_Scarface_%281983%29%2C_portrayed_by_Al_Pacino.jpg"),
                  fit: BoxFit.contain,
                  ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 10.00,horizontal: 0.00),
                  color: Colors.black,
                  child: const Text("Tony Montana",
                  style: TextStyle(color: Colors.white,fontSize: 20.00),
                  ),
                ),
          ],
            // child: Column(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Container(
            //       color: Colors.lightGreen,
            //       child: Text("Box 1",
            //           style: TextStyle(color: Colors.black,fontSize: 30.00)),
          ),
        ),
    );
  }
}