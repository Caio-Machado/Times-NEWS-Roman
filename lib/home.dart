import 'package:flutter/material.dart';

import 'carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: SingleChildScrollView(child: Carousel()));
  }
}
