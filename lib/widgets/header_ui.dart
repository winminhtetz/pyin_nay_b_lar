import 'package:flutter/material.dart';

class HeaderUI extends StatelessWidget {
  const HeaderUI({
    super.key,
    required this.padding,
    required this.titlePadding,
    required this.height,
    required this.fontSize,
    required this.iconSize,
  });

  final EdgeInsets padding, titlePadding;
  final double height, fontSize, iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Icon(
            Icons.self_improvement_sharp,
            size: iconSize,
          ),
          Padding(
            padding: titlePadding,
            child: Text(
              'PyinNayBeLar',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
