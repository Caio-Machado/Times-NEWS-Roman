import 'package:url_launcher/url_launcher.dart';

class ResponsiveConfigs {
  static double adjustsWidth(double screenWidth, double margin) {
    if (screenWidth >= 600) {
      return 550;
    }
    return screenWidth - (margin * 2);
  }
}

class GeneralActions {
  static void abrirUrl(host) async {
    final Uri toLaunch = Uri.parse(host);
    if (!await launchUrl(toLaunch)) throw 'Could not launch $host';
  }
}
