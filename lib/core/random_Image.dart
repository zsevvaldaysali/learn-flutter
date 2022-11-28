import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final String ImageUrl =
      "https://i.pinimg.com/originals/b9/16/99/b91699c52243770ce558b9035658e852.jpg";
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(ImageUrl, height: height, fit: BoxFit.cover);
  }
}
