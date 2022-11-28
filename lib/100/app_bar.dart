import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class appBarLearnView extends StatelessWidget {
  const appBarLearnView({Key? key}) : super(key: key);

  final String _title = "welcome to hell";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left_outlined),
        leadingWidth: 50,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_outlined )),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
