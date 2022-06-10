import 'package:flutter/material.dart';
import 'dart:math';
import 'configs.dart';

class CarouselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(1), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))
        ], borderRadius: const BorderRadius.all(Radius.circular(15)), image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken), image: NetworkImage('https://s.abcnews.com/images/US/maryland-shooting-ht-ps-220609_1654806584945_hpMain_16x9_1600.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child: Column(children: [
          Header(title: 'Título Categoria'),
          Navigation(),
          InfoBox(title: 'Titulo Teste que tem que ser longo', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque malesuada nibh odio, non volutpat nibh venenatis ac. Morbi vel imperdiet lorem, nec fermentum eros. Sed sit amet felis mauris. Quisque porta lacus non est viverra, et eleifend metus volutpat. Vivamus ut quam ipsum. Nunc non tristique enim. Etiam quam libero, blandit eget magna non, tincidunt luctus mi. Curabitur quis erat at justo condimentum consectetur a ut mauris.')
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
