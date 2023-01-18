import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

import '202/theme/theme_learn_view.dart';

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
        theme: LightTheme().theme,
        // ThemeData.dark().copyWith(
        //     progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
        //     listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        //     textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white)),
        //     appBarTheme: const AppBarTheme(
        //       centerTitle: true,
        //       systemOverlayStyle: SystemUiOverlayStyle.light,
        //       backgroundColor: Colors.transparent,
        //       elevation: 0,
        //     )),
        home: const ThemeLearnView());
  }
}
