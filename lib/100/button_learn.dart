import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
                onPressed: () {},
                child: Text('data'),
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.red;
                }))),
            ElevatedButton(
              onPressed: () {},
              child: Text('manken', style: TextStyle(color: Colors.lime)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 105, 15, 138)),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.amber,
              child: Icon(Icons.home),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            OutlinedButton(
              onPressed: () {},
              child: Text('sırık'),
              style: OutlinedButton.styleFrom(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(25),
                  backgroundColor: Colors.purple,
                  shape: CircleBorder()),
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarms_rounded),
                label: Text("alarm")),
            InkWell(onTap: () {}, child: const Text('custom')),
            Container(
              height: 50,
              color: Colors.orange,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child: Text("Place Bid",
                    style: Theme.of(context).textTheme.headline5),
              ),
            ),
          ],
        ));
  }
}
