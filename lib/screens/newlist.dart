import 'package:flutter/material.dart';
import 'package:recipes/screens/cards/card1.dart';

class FooderLich extends StatefulWidget {
  const FooderLich({super.key});

  @override
  State<FooderLich> createState() => _FooderLichState();
}

class _FooderLichState extends State<FooderLich> {
  int _selectedIndex = 0;
  static List<Widget> pages=<Widget>[
    const Card1(),
    Container(color: Colors.green,),
    Container(color: Colors.blue,)

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fooder Lich"),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 218, 214, 214),
        selectedItemColor: const Color.fromARGB(255, 7, 210, 88),
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3'
          )

        ],
      ),
    );
  }
}