import 'package:flutter/material.dart';
import 'package:tarea3_5/item.dart';
import 'dummy_data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 83, 83, 83),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        foregroundColor: Colors.white,
        title: Text('Quick & easy'),
      ),
      body: ListView.builder(
          itemCount: dummyMeals.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Item(
              iteminfo: dummyMeals[index],
              arrNumber: index,
            );
          }),
    );
  }
}
