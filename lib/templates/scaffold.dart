import 'package:flutter/material.dart';

import '/templates/menu.dart';
import '/templates/appbar.dart';

class ScaffoldTemplate extends StatelessWidget {
  Widget content = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(),
      endDrawer: Menu(),
      body: content,
    );
  }
}
