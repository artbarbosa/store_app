import 'package:flutter/material.dart';

class IconBottomNavigatorWidget extends StatelessWidget {
  final IconData? icon;
  final double size;
  final double fontSize;
  final double topPadding;
  final double bottomPadding;
  final bool isActivy;

  const IconBottomNavigatorWidget(
      {Key? key,
      this.icon,
      this.size = 23,
      this.fontSize = 11,
      this.topPadding = 6,
      this.bottomPadding = 6,
      this.isActivy = false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding, bottom: bottomPadding, left: 12, right: 12),
      child: Column(
        children: [
          Icon(
            icon,
            size: size,
            color:  isActivy ? Colors.black : Colors.grey,
          ),
        ],
      ),
    );
  }
}