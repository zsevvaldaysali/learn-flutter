import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      padding: PaddingUtility().paddingHorizontal,
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },
    ));
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text("${_model.price} eth")],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: "Abstract Art", price: 3.14),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: "Abstract Art2", price: 8.14),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: "Abstract Art3", price: 4.14),
      CollectionModel(imagePath: 'assets/png/image_collection.png', title: "Abstract Art4", price: 13.14)
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingBottom = const EdgeInsets.only(bottom: 20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
