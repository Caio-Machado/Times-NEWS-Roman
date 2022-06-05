import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
            child: PageView.builder(
                itemCount: 3,
                itemBuilder: (_, currentIndex) {
                  return Container(color: currentIndex == 1 ? Colors.amber : Colors.red);
                })),
        _buildBullet()
      ],
    ));
  }

  Widget _buildBullet() {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(width: 10, height: 10, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black)),
          Container(margin: EdgeInsets.only(bottom: 0, top: 0, left: 10, right: 10), width: 10, height: 10, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black)),
          Container(width: 10, height: 10, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black))
        ]));
  }
}
