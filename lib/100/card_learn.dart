import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Card(
          margin: ProjectMargins.cardMargin,
          color: Colors.pink,
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text("ebrar"),
            ),
          ),
          //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shape: StadiumBorder(),
        ),
        Card(
          margin: ProjectMargins.cardMargin,
          color: Theme.of(context).colorScheme.error,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            child: Center(
              child: Text("enis"),
            ),
          ),
        ),
        _CustomCard(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "naber",
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(8.0);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: roundedRectangleBorder,
    );
  }
}
