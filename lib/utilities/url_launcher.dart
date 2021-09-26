 import 'package:url_launcher/url_launcher.dart';

  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      // ignore: avoid_print
      print('Could not launch $url');
      throw 'Could not launch $url';
    }
  }