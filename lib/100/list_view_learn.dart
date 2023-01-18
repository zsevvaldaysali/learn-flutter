import 'package:flutter/material.dart';

class ListViewLeanr extends StatefulWidget {
  const ListViewLeanr({Key? key}) : super(key: key);

  @override
  State<ListViewLeanr> createState() => _ListViewLeanrState();
}

class _ListViewLeanrState extends State<ListViewLeanr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            //const Spacer(),
            Expanded(
              child: ListView(
                children: [
                  FittedBox(
                    child: Text(
                      "hoşça kal",
                      style: Theme.of(context).textTheme.headline1,
                      maxLines: 1,
                      //textScaleFactor: 0.8,
                    ),
                  ),
                  Container(color: const Color.fromARGB(255, 20, 20, 213), height: 200),
                  const Divider(),
                  SizedBox(
                      height: 200,
                      child: ListView(scrollDirection: Axis.horizontal, children: [
                        Container(color: Colors.yellow, width: 100),
                        Container(color: Colors.red, width: 100),
                        Container(color: Colors.yellow, width: 100),
                        Container(color: Colors.red, width: 100),
                        Container(color: Colors.yellow, width: 100),
                      ])),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {},
                  ),

                  //xx

                  FittedBox(
                    child: Text(
                      "hoşça kal",
                      style: Theme.of(context).textTheme.headline1,
                      maxLines: 1,
                      //textScaleFactor: 0.8,
                    ),
                  ),
                  Container(color: const Color.fromARGB(255, 20, 20, 213), height: 200),
                  const Divider(),
                  SizedBox(
                      height: 200,
                      child: ListView(scrollDirection: Axis.horizontal, children: [
                        Container(color: Colors.yellow, width: 100),
                        Container(color: Colors.red, width: 100),
                        Container(color: Colors.yellow, width: 100),
                        Container(color: Colors.red, width: 100),
                        Container(color: Colors.yellow, width: 100),
                      ])),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {},
                  ),
                  _ListDemo()
                ],
              ),
            ),
          ],
        ));
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print("hello canım");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
