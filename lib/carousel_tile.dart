import 'package:flutter/material.dart';
import 'dart:math';
import 'configs.dart';

class CarouselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken), image: NetworkImage('https://substackcdn.com/image/fetch/w_1200,h_600,c_limit,f_jpg,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2Fccb48d1f-2a82-45be-996e-a34b6126af34_1280x1280.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child: Column(children: [
          Header(title: 'Título Categoria'),
          Navigation(),
          InfoBox(title: 'Titulo Teste que tem que ser longo', description: ' virar lorem ipsum dolor...')
        ])));
  }
}

class Header extends StatelessWidget {
  var title = '';

  Header({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 65),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        color: const Color(0xFF161314),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(title, style: const TextStyle(fontSize: 25, color: Colors.white))
        ]));
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
                angle: 270 * pi / 180,
                child: GestureDetector(
                  child: const Icon(Icons.arrow_circle_up, size: 75, color: Colors.white),
                )),
            Transform.rotate(
                angle: 270 * pi / 180,
                child: GestureDetector(
                  child: const Icon(Icons.arrow_circle_down, size: 75, color: Colors.white),
                ))
          ],
        ));
  }
}

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
                Text(title, style: const TextStyle(fontSize: 27, color: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                Padding(padding: const EdgeInsets.only(top: 20), child: Text(description, style: const TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center))
              ],
            )));
  }
}
