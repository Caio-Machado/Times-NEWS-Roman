import 'package:flutter/material.dart';
import 'dart:math';

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