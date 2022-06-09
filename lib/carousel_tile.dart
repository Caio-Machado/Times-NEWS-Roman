import 'package:flutter/material.dart';
import 'dart:math';

class CarouselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50, bottom: 25),
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://substackcdn.com/image/fetch/w_1200,h_600,c_limit,f_jpg,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2Fccb48d1f-2a82-45be-996e-a34b6126af34_1280x1280.png'), fit: BoxFit.cover)),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 65),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: const Color(0xFF161314),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Título Categoria', style: TextStyle(fontSize: 25, color: Colors.white))
                  ])),
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.rotate(
                          angle: 270 * pi / 180,
                          child: GestureDetector(
                            child: Icon(Icons.arrow_circle_up, size: 90, color: Colors.white),
                          )),
                      Transform.rotate(
                          angle: 270 * pi / 180,
                          child: GestureDetector(
                            child: Icon(Icons.arrow_circle_down, size: 90, color: Colors.white),
                          ))
                    ],
                  )),
              Container(
                  color: const Color(0xFF161314),
                  child: Column(
                    children: [
                      Text('Titulo noticia', style: TextStyle(fontSize: 35, color: Colors.white, decoration: TextDecoration.underline)),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Welcome to the first edition of web3 weekly, a newsletter from a16z crypto that curates resources from us, and from others, for those seeking...',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ))
            ])));
  }
}
