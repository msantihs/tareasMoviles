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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tarea2'),
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
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;

  bool liked = false;

  int _counter = 9999;

  void _changeCounter() {
    setState(() {
      if (liked) {
        _counter--;
      } else {
        _counter++;
      }
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Column(
        children: [
          Row(
            children: [
              Image.network(
                //'https://blog.cdn.own3d.tv/resize=fit:crop,height:400,width:600/yQKPXavjRzVR4NBGYhcS', //widepeepohappy for testing
                'https://pbs.twimg.com/media/DburBCaVQAAM_2g.jpg:large',
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'El ITESO, Universidad Jesuita de Guadalajara',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'San Pedro Tlaquepaque, Jal.',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: _changeCounter,
                              tooltip: liked ? 'Dislike' : 'Like',
                              icon: liked
                                  ? const Icon(Icons.thumb_down)
                                  : const Icon(Icons.thumb_up),
                            )
                          ],
                        ),
                        Column(
                          children: [Text('$_counter')],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.mail,
                            size: 50,
                          ),
                          color: btn1 ? Colors.indigo : Colors.black,
                          tooltip: 'Correo',
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            setState(() {
                              btn1 = !btn1;
                            });
                            final snackBar = SnackBar(
                              content: const Text(
                                  'Puedes encontrar comida en sus cafeterías'),
                              action: SnackBarAction(
                                label: 'exit',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Correo',
                          style: TextStyle(),
                        )
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add_ic_call,
                            size: 50,
                          ),
                          color: btn2 ? Colors.indigo : Colors.black,
                          tooltip: 'Correo',
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            setState(() {
                              btn2 = !btn2;
                            });
                            final snackBar = SnackBar(
                              content: const Text(
                                  'Puedes pedir información en rectoría'),
                              action: SnackBarAction(
                                label: 'exit',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Llamada',
                          style: TextStyle(),
                        )
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.directions,
                            size: 50,
                          ),
                          color: btn3 ? Colors.indigo : Colors.black,
                          tooltip: 'Correo',
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            setState(() {
                              btn3 = !btn3;
                            });
                            final snackBar = SnackBar(
                              content: const Text(
                                  'Se encuentra ubicado en Periférico Sur 8585'),
                              action: SnackBarAction(
                                label: 'exit',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'Ruta',
                          style: TextStyle(),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ), //botones
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. Fundada en el año de 1957 por el Padre Luis Hernández Prieto S.J., José Aguilar Figueroa y el ingeniero José Fernández del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas.',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
