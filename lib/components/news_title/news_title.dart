import 'package:flutter/material.dart';
import 'package:timesnewsroman/configs.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTile extends StatelessWidget {
  var title = '';
  var image = '';
  var url   = '';

  NewsTile({Key? key, this.title = '', this.image = '', this.url = '' } ) : super(key: key);
  
  void abrirUrl(host) async {
    final Uri toLaunch = Uri.parse(host);
    if (!await launchUrl(toLaunch)) throw 'Could not launch $host';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => abrirUrl(url),
      child: Container(
        margin: EdgeInsets.all(20),
        width: ResponsiveConfigs.adjustsWidth(
          MediaQuery.of(context).size.width,
          20,
        ),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF161314),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Image.network(image, 
            errorBuilder: (context, error, stackTrace) {
              return Image.network('https://www.cer-cavalos.com/images/not_found.png');
            }),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
