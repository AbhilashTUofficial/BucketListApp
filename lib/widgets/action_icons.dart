import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionIcons extends StatelessWidget {
  final double iconSize = 25;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.timelapse,
            size: iconSize,
            color: Colors.white,
          ),
          splashColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.favorite,
            size: iconSize,
            color: Colors.white,
          ),
          splashColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.check_circle,
            size: iconSize,
            color: Colors.white,
          ),
          splashColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
