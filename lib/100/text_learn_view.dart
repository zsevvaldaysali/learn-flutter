import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, required this.userName}) : super(key: key);
  final String? userName;
  String name = 'Zeynep';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome$name :) ${name.length} ' * 10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              wordSpacing: 2, letterSpacing: 2,
              backgroundColor: Color.fromARGB(255, 3, 149, 162),
              decoration: TextDecoration.underline,
              fontSize: 21, fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              //height: 2,
              color: Colors.lime,
            ),
            //textScaleFactor: 1.7, //başka cihazlarda nasıl gözükeceğini ayarlıyorsun
          ),
          Text(
            'Hello $name  ${name.length} ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.WelcomeColor),
            //textScaleFactor: 1.7, //başka cihazlarda nasıl gözükeceğini ayarlıyorsun
          ),
          Text(
            'Hello $name ${name.length} ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: ProjectStyles.WelcomeTextStyles,
            //textScaleFactor: 1.7, //başka cihazlarda nasıl gözükeceğini ayarlıyorsun
          ),
          Text(userName ?? ' '),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle WelcomeTextStyles = const TextStyle(
    wordSpacing: 2, letterSpacing: 2,
    backgroundColor: Color.fromARGB(255, 3, 149, 162),
    decoration: TextDecoration.underline,
    fontSize: 21, fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    //height: 2,
    color: Colors.lime,
  );
}

class ProjectColors {
  static Color WelcomeColor = Colors.red;
}
