import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Card(
            child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
        )));
  }
}

enum WidgetSizes { normalCardHeight, circleProfile }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 25;

      case WidgetSizes.circleProfile:
        return 30;
    }
  }
}
