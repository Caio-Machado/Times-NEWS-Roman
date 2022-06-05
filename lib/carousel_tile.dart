import 'package:flutter/material.dart';

class CarouselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://substackcdn.com/image/fetch/w_1200,h_600,c_limit,f_jpg,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2Fccb48d1f-2a82-45be-996e-a34b6126af34_1280x1280.png'), fit: BoxFit.cover)),
    );
  }
}
