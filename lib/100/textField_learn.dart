import 'package:flutter/material.dart';

class textFeildLearn extends StatefulWidget {
  const textFeildLearn({Key? key}) : super(key: key);

  @override
  State<textFeildLearn> createState() => _textFeildLearnState();
}

class _textFeildLearnState extends State<textFeildLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
          return AnimatedContainer(
              key: key,
              duration: const Duration(seconds: 1),
              height: 10,
              width: 10.0 * (currentLength ?? 0),
              color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)]);
        },
        maxLength: 140,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          hintText: "Mail",
          labelText: "Mail",
          fillColor: Colors.transparent,
          filled: true,
        ),
      ),
    );
  }
}
