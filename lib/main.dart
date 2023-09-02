import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tip Time'),
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
  bool switchMan = false;
  double? tipMultiplier = 0.00;
  double _tipAmount = 0.00;

  final myController = TextEditingController();

  void calcularPropina() {
    setState(() {
      double temp = double.parse(myController.text);
      temp = temp * tipMultiplier!;
      if (switchMan) {
        //si quiero redondear
        _tipAmount = temp.ceil().toDouble();
      } else {
        _tipAmount = double.parse(temp.toStringAsFixed(2));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.store_mall_directory,
                        color: Colors.green,
                        size: 30,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 150,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Cost of Service',
                            ),
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.digitsOnly
                            // ],
                            controller: myController,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.room_service,
                      color: Colors.green,
                      size: 30,
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'How was the service?',
                        style: TextStyle(),
                      ),
                    )
                  ],
                )
              ],
            ), //
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  RadioListTile(
                      title: Text('Amazing (20%)'),
                      value: 1.2,
                      groupValue: tipMultiplier,
                      onChanged: (double? value) {
                        setState(() {
                          tipMultiplier = value;
                        });
                      }),
                  RadioListTile(
                      title: Text('Good (18%)'),
                      value: 1.18,
                      groupValue: tipMultiplier,
                      onChanged: (double? value) {
                        setState(() {
                          tipMultiplier = value;
                        });
                      }),
                  RadioListTile(
                      title: Text('Okay (15%)'),
                      value: 1.15,
                      groupValue: tipMultiplier,
                      onChanged: (double? value) {
                        setState(() {
                          tipMultiplier = value;
                        });
                      })
                ],
              ),
            ), //botones satanicos
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.north_east,
                      color: Colors.green,
                      size: 30,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 120),
                  child: Column(
                    children: [
                      Text(
                        'Round up tip ? ',
                        style: TextStyle(),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Switch(
                      // This bool value toggles the switch.
                      value: switchMan,
                      activeColor: Colors.blue,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          switchMan = value;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: calcularPropina,
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))))),
                  ),
                ],
              ),
            ), //boton calculate
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [Text('Tip Amount: \$ $_tipAmount')],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
