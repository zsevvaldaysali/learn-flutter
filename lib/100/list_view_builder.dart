import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
            color: Colors.white);
          },
          itemBuilder: (BuildContext context, int index) {
            print(index);
            return SizedBox(
              height: 200,
              child: Column(
                children: [Expanded(child: Image.network('https://picsum.photos/id/$index/200/300')), Text('$index')],
              ),
            );
          },
          itemCount: 20,
        ));
  }
}
