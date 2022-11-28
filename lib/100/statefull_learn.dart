import 'package:flutter/material.dart';

import '../product/counter_Hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline4)),
          Placeholder(),
          counterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
