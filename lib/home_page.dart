import 'package:flutter/material.dart';
import 'Screens/suma_resta.dart';
import 'Screens/multiplica.dart';
import 'Screens/primo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  final List<Widget> _pages = [
    const SumaResta(),
    const Multiplica(),
    const Primo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contador 2.0 '),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.one_k), label: 'Suma'),
          BottomNavigationBarItem(icon: Icon(Icons.two_k), label: 'Mult'),
          BottomNavigationBarItem(icon: Icon(Icons.three_k), label: 'Primo')
        ],
      ),
    );
  }
}
