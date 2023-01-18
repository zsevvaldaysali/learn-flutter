import 'package:flutter/material.dart';
import 'package:flutter_full_learn/100/card_learn.dart';
import 'package:flutter_full_learn/100/image_learn.dart';
import 'package:flutter_full_learn/100/list_view_learn.dart';

import '../100/textField_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchMarginValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
            extendBody: true,
            //extendBodyBehindAppBar: true,

            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _tabController.animateTo(_MyTabViews.home.index);
              },
              backgroundColor: Colors.yellow,
            ),
            bottomNavigationBar: BottomAppBar(
                notchMargin: _notchMarginValue, shape: const CircularNotchedRectangle(), child: _myTabView()),
            appBar: AppBar(),
            body: _tabBarView()));
  }

  TabBar _myTabView() {
    return TabBar(
      controller: _tabController,
      tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
      //const [Tab(text: "Page 1"), Tab(text: "Page 2 ")],
      indicatorColor: Colors.white,
      unselectedLabelColor: Colors.pink,
      labelColor: Colors.cyan,
      padding: EdgeInsets.zero,
      onTap: (int index) {},
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
        controller: _tabController, children: const [imageLearn(), CardLearn(), ListViewLeanr(), textFeildLearn()]);
  }
}

// ignore: camel_case_types
enum _MyTabViews { home, settings, favorite, profile }

// ignore: camel_case_extensions
extension _MyTabViewsExtension on _MyTabViews {}
