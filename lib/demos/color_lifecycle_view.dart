import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';

class colorLifeCycleView extends StatefulWidget {
  const colorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<colorLifeCycleView> createState() => _colorLifeCycleViewState();
}

class _colorLifeCycleViewState extends State<colorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: _changeBackgroundColor, icon: const Icon(Icons.clear))],
        ),
        body: Column(
          children: [
            const Spacer(),
            Expanded(
                child: colorDemos(
              initialColor: _backgroundColor,
            ))
          ],
        ));
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
