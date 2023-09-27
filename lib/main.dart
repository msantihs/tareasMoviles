import 'package:flutter/material.dart';
import 'package:newcountman/Providers/counter_provider.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => CounterProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'contador 2',
      home: HomePage(),
      //theme: , //el tema de esta madre
    );
  }
}
