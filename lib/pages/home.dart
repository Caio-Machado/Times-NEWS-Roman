import 'package:flutter/material.dart';

import 'package:timesnewsroman/components/template/generic_templates.dart';
import '../components/carousel/carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(child: Carousel());
  }
}
