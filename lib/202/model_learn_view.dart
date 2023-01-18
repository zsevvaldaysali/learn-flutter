import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel0()
      ..userId = 1
      ..body = 'zşd';
    user1.body = "fıstık";

    final user2 = PostModel1(userId: 20020, id: 2072, title: "fıstıkçı şahap", body: "türk dil kurumu");
    user2.body = "tdk";

    final user3 = PostModel2(2002, 2072, "biraz sıkıldım", "son 10 dk kaldı");
    //user3.body = "değiştiremezsin çünkü final";

    final user4 = PostModel3(2002, 2072, "biraz sıkıldım", "aman bre deryalar");

    final user5 = PostModel4(userId: 2002, id: 2072, title: "nasıl gidiyooo", body: "ee daha daha");

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');
    final user7 = PostModel7();

    // Service
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //user9 = PostModel8(title: "On pressed");
            user9 = user9.copyWith(title: "zşd");
            user9.updateBody("sevsali");
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? "not has any data"),
      ),
    );
  }
}
