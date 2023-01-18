import 'package:flutter/material.dart';

// ignore: camel_case_types
class colorDemos extends StatefulWidget {
  const colorDemos({Key? key, required this.initialColor}) : super(key: key);

  final Color? initialColor; //ekran açıldığında göreceğimiz ilk color
  @override
  State<colorDemos> createState() => _colorDemosState();
}

// ignore: camel_case_types
class _colorDemosState extends State<colorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant colorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialColor != _backgroundColor && widget.initialColor != null) {
      ChangeBackgroundColour(widget.initialColor!);
    }
  }

  // ignore: non_constant_identifier_names
  void ChangeBackgroundColour(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ContainerColors(color: Colors.yellow), label: 'yellow'),
        BottomNavigationBarItem(
          icon: _ContainerColors(color: Colors.red),
          label: 'red',
        ),
        BottomNavigationBarItem(
          icon: _ContainerColors(color: Colors.blue),
          label: 'blue',
        )
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.yellow.index) {
      ChangeBackgroundColour(Colors.yellow);
    } else if (value == _MyColors.red.index) {
      ChangeBackgroundColour(Colors.red);
    } else if (value == _MyColors.blue.index) {
      ChangeBackgroundColour(Colors.blue);
    }
  }
}

enum _MyColors { yellow, red, blue }

class _ContainerColors extends StatelessWidget {
  const _ContainerColors({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 20,
      height: 20,
    );
  }
}
