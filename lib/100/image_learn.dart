import 'package:flutter/material.dart';

class imageLearn extends StatelessWidget {
  const imageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
            height: 50,
            width: 50,
            child: jpgImage(pathName: ImageItems().appleBookWithoutPath)),
        pngImage(pngPathName: ImageItems().pngBaloonsWithoutPath),
        Expanded(
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/763px-Apple-book.svg.png",
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.abc_outlined),
          ),
        ), //image gelmediğinde orası boş duracağına errorBuildera Icon atayarak
        //en azından ikon gözükmesini sağlayıp hata olduğunu anlayabiliriz ve daha ileri seviye bi iş yapmış oluruz
      ]),
    );
  }
}

class ImageItems {
  final String empresa = "assets/empresa.jpg";
  final String appleBook =
      "assets/jpg/book-apple-clip-art-png-favpng-kUmidqinmS4CPbmMPHzKnsL0T_t.jpg";
  final String appleBookWithoutPath =
      "book-apple-clip-art-png-favpng-kUmidqinmS4CPbmMPHzKnsL0T_t";
  final String pngBaloonsWithoutPath = "pngwing.com";
}

class jpgImage extends StatelessWidget {
  const jpgImage({Key? key, required this.pathName}) : super(key: key);
  final String pathName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/jpg/$pathName.jpg",
      fit: BoxFit.cover,
    );
  }
}

class pngImage extends StatelessWidget {
  const pngImage({Key? key, required this.pngPathName}) : super(key: key);
  final String pngPathName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/png/$pngPathName.png",
      fit: BoxFit.cover,
    );
  }
}
