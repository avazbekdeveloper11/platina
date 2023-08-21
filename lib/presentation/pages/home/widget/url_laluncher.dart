import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> launchInBrowser({required Uri url}) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
