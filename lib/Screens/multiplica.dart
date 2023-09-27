import 'package:flutter/material.dart';
import 'package:newcountman/Providers/counter_provider.dart';
import 'package:provider/provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({super.key});

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

void openDialog(BuildContext context, int number) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Multiplicacion'),
        content: Text('Has multiplicado por ' + number.toString()),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cerrar'),
          ),
        ],
      );
    },
  );
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                context.watch<CounterProvider>().counter.toString(),
                style: TextStyle(fontSize: 40),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterProvider>().mult2();
                        openDialog(context, 2);
                      },
                      child: Text('x2')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterProvider>().mult3();
                        openDialog(context, 3);
                      },
                      child: Text('x3')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterProvider>().mult5();
                        openDialog(context, 5);
                      },
                      child: Text('x5')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
