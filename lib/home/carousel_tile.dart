import 'package:flutter/material.dart';
import 'dart:math';
import '/configs.dart';
import '/templates/generic_templates.dart';

class CarouselTile extends StatelessWidget {
  var categoryTitle = '';
  var newsTitle = '';
  var description = '';
  var image = '';

  CarouselTile({Key? key, this.categoryTitle = '', this.newsTitle = '', this.description = '', this.image = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken),
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoryHeader(title: categoryTitle),
            Navigation(),
            InfoBox(
              title: newsTitle,
              description: description,
            ),
          ],
        ),
      ),
    );
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
            )));
  }
}
