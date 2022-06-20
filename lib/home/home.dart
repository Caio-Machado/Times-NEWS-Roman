import 'package:flutter/material.dart';

import 'package:timesnewsroman/templates/generic_templates.dart';
import 'carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(child: Carousel());
  }
}
