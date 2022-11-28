import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 177,
            child: Text('just' * 200),
          ),
          SizedBox.shrink(), //shrink:boş bir alan verir
          SizedBox.square(
              dimension: 94,
              child: Text('do' * 100)), //dimension:kare bir alan verir
          Container(
            height: 250,
            width: 250,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 20, maxHeight: 150),
            child: Text('it' * 1),
            //padding: EdgeInsets.all(16.0),
            //margin: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: ProjectContainerDecoration(),
          )
        ],
      ),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 85, 220, 130),
            border:
                Border.all(color: Color.fromARGB(255, 109, 21, 196), width: 10),
            boxShadow: [
              BoxShadow(
                color: Colors.cyan,
                offset: Offset(-20.0, 0.0),
                blurRadius: 22,
                spreadRadius: 20,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 53, 243, 84),
                offset: Offset(20.0, 0.0),
                blurRadius: 32,
                spreadRadius: 20,
              )
            ],
            gradient: RadialGradient(
                colors: [Colors.pink, Colors.orange, Colors.purple],
                //tileMode: TileMode.mirror,
                center: Alignment.center,
                radius: 0.45)
            //borderRadius: BorderRadius.circular(10.0)

            );
}
