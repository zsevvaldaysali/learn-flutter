import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Exercises')),
      backgroundColor: Color.fromARGB(255, 238, 72, 127),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const Text('naber cınım'),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: 'mesajlar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_ic_call_rounded), label: '   aramalar'),
      ]),
    );
  }
}
