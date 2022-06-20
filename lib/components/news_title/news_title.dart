import 'package:flutter/material.dart';
import 'package:timesnewsroman/configs.dart';

class NewsTile extends StatelessWidget {
  var title = '';
  var image = '';

  NewsTile({Key? key, this.title = '', this.image = ''}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Image.network(image),
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
    );
  }
}
