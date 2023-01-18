import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_mixin.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

var httpsUri = Uri(
  scheme: 'https',
  host: 'pub.dev',
  path: '/packages/url_launcher',
);

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          onPressed: (() {
            launchUrl(httpsUri);
          })),
      body: Column(
        children: [
          Text(
            'zey',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const LoadingBar(),
        ],
      ),
    );
  }

  @override
  void name(args) {}
}
