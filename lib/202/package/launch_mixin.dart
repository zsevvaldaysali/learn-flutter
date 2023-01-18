import 'package:url_launcher/url_launcher_string.dart';

mixin LaunchMixin {
  void name(args);

  void launchUrl(Uri url) async {
    if (await canLaunchUrlString(url.toString())) {
      launchUrl(url);
    }
  }
}
