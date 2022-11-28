import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [CenterCircularWidget()],
        ),
        body: Center(child: CenterCircularWidget()));
  }
}

class CenterCircularWidget extends StatelessWidget {
  const CenterCircularWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 10,
        backgroundColor: Colors.white,
      ),
    );
  }
}
