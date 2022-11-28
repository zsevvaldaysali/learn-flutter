import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title,
                ),
              ),
            )),
            const SizedBox(height: 100),
            CustomFoodButton(title: title)
          ],
        ));
  }
}

class _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class _ColorUtility {
  final Color whiteColor = Colors.white;
  final Color backgroundRed = Colors.red;
}

class CustomFoodButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundRed, shape: StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normal2xPadding,
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
        ));
  }
}
