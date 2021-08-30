import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconsar extends StatelessWidget {
  Iconsar({@required this.onPress, @required this.icon, @required this.color});
  final Function onPress;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF311b92),
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(7, 7)),
            BoxShadow(
                color: Color(0xFF7e57c2),
                blurRadius: 25,
                spreadRadius: 2,
                offset: Offset(-4, -4))
          ]),
      child: RawMaterialButton(
        child: Icon(icon, color: Color(0xFFd1c4e9)),
        shape: CircleBorder(),
        elevation: 6,
        constraints: BoxConstraints.tightFor(width: 50, height: 50),
        fillColor: color,
        onPressed: onPress,
      ),
    );
  }
}
