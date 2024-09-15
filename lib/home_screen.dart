import 'package:flutter/material.dart';
class homescreen extends StatelessWidget {
  const homescreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: const Text("appScreen"),
          centerTitle: true,

        ),
        body: const Center(
          child: Text("frist app screen ",style: TextStyle(fontSize: 25) ,),

        ) ,







      );
    }
}