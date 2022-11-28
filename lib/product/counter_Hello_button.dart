import 'package:flutter/material.dart';

import 'language/language_items.dart';

class counterHelloButton extends StatefulWidget {
  const counterHelloButton({Key? key}) : super(key: key);

  @override
  State<counterHelloButton> createState() => _counterHelloButtonState();
}

class _counterHelloButtonState extends State<counterHelloButton> {
  int _counterCustom = 0;
  final String _helloTitle = LanguageItems.welcomeTitle;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounter, child: Text("$_helloTitle $_counterCustom"));
  }
}
