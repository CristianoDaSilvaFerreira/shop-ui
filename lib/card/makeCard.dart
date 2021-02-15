import 'package:flutter/material.dart';

Widget makeCard({context, startColor, endColor, image}) {
  return GestureDetector(
    onTap: () {},
    child: AspectRatio(
      aspectRatio: 4 / 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              startColor,
              endColor,
            ],
          ),
        ),
      ),
    ),
  );
}
