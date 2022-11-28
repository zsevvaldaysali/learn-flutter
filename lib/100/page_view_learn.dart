import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'button_learn.dart';
import 'card_learn.dart';
import 'icon_learn.dart';
import 'image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.6);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(_currentPageIndex.toString()),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: (() {
                _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
              }),
              child: const Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: (() {
                _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
              }),
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
        appBar: AppBar(),
        body: PageView(
          controller: _pageController, //bir sonraki sayfanın önizlemesini gösterir
          padEnds: false,
          onPageChanged: _updatePageIndex,
          children: [
            const appBarLearnView(),
            IconLearnView(),
            const CardLearn(),
            const ButtonLearn(),
          ],
        ));
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
