import 'package:flutter/material.dart';

Widget albumImage(Size photo) {
  return Container(
    clipBehavior: Clip.hardEdge,
    height: photo.height * 0.30,
    width: photo.width * 0.54,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/albumphoto/handeyener.jpg"),
          fit: BoxFit.fill),
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
            color: Colors.black54,
            offset: Offset(5.0, 5.0),
            blurRadius: 5.0,
            spreadRadius: 5.0),
        BoxShadow(
            color: Color(0xFF673ab7),
            offset: Offset(-5.0, -5.0),
            blurRadius: 5.0,
            spreadRadius: 5.0),
      ],
    ),
  );
}
