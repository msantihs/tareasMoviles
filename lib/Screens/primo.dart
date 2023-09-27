import 'package:flutter/material.dart';
import 'package:newcountman/Providers/counter_provider.dart';
import 'package:provider/provider.dart';

class Primo extends StatefulWidget {
  const Primo({super.key});

  @override
  State<Primo> createState() => _PrimoState();
}

class _PrimoState extends State<Primo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<CounterProvider>().isPrime()
                ? 'Primo'
                : 'No es primo',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: context.watch<CounterProvider>().isPrime()
                    ? Colors.green
                    : Colors.blue),
          )
        ],
      ),
    );
  }
}
