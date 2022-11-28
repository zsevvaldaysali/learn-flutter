import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_Image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  final width2 = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(child: RandomImage(), bottom: _cardHeight / 2),
                    Positioned(height: _cardHeight, bottom: 0, width: width2, child: _cardMethod())
                  ],
                )),
            Spacer(
              flex: 6,
            )
          ],
        ));
  }

  Card _cardMethod() => Card(color: Colors.white, shape: StadiumBorder());
}
