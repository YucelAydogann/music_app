import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

NewGradientAppBar appBrr() {
  return NewGradientAppBar(
    gradient: LinearGradient(colors: [
      Color(0xFF673ab7),
      Color(0xFF7c4dff),
    ]),
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Text("Musically"),
        Icon(Icons.exit_to_app),
      ],
    ),
  );
}

Container gradi({Widget child}) {
  return Container(
    child: child,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
          Color(0xFF7c4dff),
          Color(0xFF4527a0),
        ])),
  );
}

