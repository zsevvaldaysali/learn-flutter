import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';

import '100/list_view_learn.dart';
import '100/list_view_builder.dart';
import '100/textField_learn.dart';
import 'demos/color_lifecycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
            listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
            textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white)),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent,
              elevation: 0, 
            )),
        home: ListViewBuilder());
  }
}
