import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/100/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = "Enisi çok seviyorum";
  final _description = "sana çok aşıkım!";
  final _createNote = "iyi ki varsın";
  final _importNote = "öptüm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            pngImage(pngPathName: ImageItems().pngBaloonsWithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _SubTitleWidget(
                title: _description * 1,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: 50,
                  child: Center(
                      child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.headline5,
                  )),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                    _importNote)), //textimizi büyütmek istiyorsak sizedBox ile sarmalarız
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
        textAlign: textAlign);
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500));
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20.0);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10.0);
}
