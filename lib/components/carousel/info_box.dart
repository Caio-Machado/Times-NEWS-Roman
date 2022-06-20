import 'package:flutter/material.dart';
import 'package:timesnewsroman/configs.dart';

class InfoBox extends StatelessWidget {
  var title = '';
  var description = '';

  InfoBox({Key? key, this.title = '', this.description = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveConfigs.adjustsWidth(MediaQuery.of(context).size.width, 25),
      margin: const EdgeInsets.all(25),
      color: const Color(0xFF161314),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 27,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
