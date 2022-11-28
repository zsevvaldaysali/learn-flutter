import 'package:flutter/material.dart';

class paddingLearnView extends StatelessWidget {
  const paddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(color: Colors.white, height: 100)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
                padding: EdgeInsets.zero, color: Colors.white, height: 100),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingRightOnly +
                ProjectPadding.pagePaddingVertical,
            child: const Text("zey"),
          ),
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);

  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
