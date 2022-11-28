import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //alt alta olmasını istediğimiz şeylerde kullanılır
        children: [
          Expanded(
              flex: 4, //%40
              child: Row(
                children: [
                  //2+2+2+4=10
                  Expanded(flex: 2, child: Container(color: Colors.lime)),
                  Expanded(flex: 2, child: Container(color: Colors.red)),
                  Expanded(flex: 2, child: Container(color: Colors.cyan)),
                ],
              )),

          Spacer(flex: 2), //boşluk bırakır
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: row'un kendi özelliğini kullanarak dikeyde sınırlandırıp yanyana yazdırma
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("a"), Text("a1"), Text("a2")],
          )),
          //Expanded(child: Container(color: Colors.purple)),
          //Row: yanyana olmasını istediğimiz şeylerde kullanılır
        ],
      ),
    );
  }
}
//column expanded olan kodda container height:200 verirsen; tüm alandan 200 çıkar ve geri kalan 800lük alanda o kod(column expanded) işlem yapar