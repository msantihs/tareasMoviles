// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'McFlutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variables que indican estado de botones
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          //en una columna poruqe sino el border abarca toda la pantalla
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 50,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Flutter McFlutter',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [Text('Experienced App Developer')],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        child: Text('123 Main Street'),
                        alignment: Alignment.centerLeft,
                      )),
                      Expanded(
                          child: Container(
                        child: Text('(415) 555-0198'),
                        alignment: Alignment.centerRight,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: IconButton(
                        icon: const Icon(Icons.accessibility),
                        color: btn1 ? Colors.indigo : Colors.black,
                        tooltip: 'boton 1',
                        onPressed: () {
                          setState(() {
                            btn1 = !btn1;
                          });
                          final snackBar = SnackBar(
                            content: const Text('boton1'),
                            action: SnackBarAction(
                              label: 'exit',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      )),
                      Expanded(
                          child: IconButton(
                        icon: const Icon(Icons.timer),
                        tooltip: 'boton 2',
                        color: btn2 ? Colors.indigo : Colors.black,
                        onPressed: () {
                          setState(() {
                            btn2 = !btn2;
                          });
                          final snackBar = SnackBar(
                            content: const Text('boton2'),
                            action: SnackBarAction(
                              label: 'exit',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      )),
                      Expanded(
                          child: IconButton(
                        icon: const Icon(Icons.phone_android),
                        color: btn3 ? Colors.indigo : Colors.black,
                        tooltip: 'boton 3',
                        onPressed: () {
                          setState(() {
                            btn3 = !btn3;
                          });
                          final snackBar = SnackBar(
                            content: const Text('boton3'),
                            action: SnackBarAction(
                              label: 'exit',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      )),
                      Expanded(
                          child: IconButton(
                        icon: const Icon(Icons.phone_iphone),
                        tooltip: 'boton 4',
                        color: btn4 ? Colors.indigo : Colors.black,
                        onPressed: () {
                          setState(() {
                            btn4 = !btn4;
                          });
                          final snackBar = SnackBar(
                            content: const Text('boton4'),
                            action: SnackBarAction(
                              label: 'exit',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
