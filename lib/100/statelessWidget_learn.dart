import 'package:flutter/material.dart';

class statelessWidgetLearn extends StatelessWidget {
  const statelessWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TitleTextWidget(text: "zeyzey"),
        TitleTextWidget(text: "naber"),
        _CustomContainer(),
      ],
    ));
  }
}

class _CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.8)),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
