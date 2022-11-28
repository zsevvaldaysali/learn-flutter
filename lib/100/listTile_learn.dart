import 'package:flutter/material.dart';

import '../core/random_Image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final String ImageUrl =
      "https://i.pinimg.com/originals/b9/16/99/b91699c52243770ce558b9035658e852.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: RandomImage(),
                    /*Text("Hello Honey,",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                            */
                    subtitle: Center(
                      child: Text("How is it going?",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    ),
                    leading: Icon(Icons.auto_awesome_outlined),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
