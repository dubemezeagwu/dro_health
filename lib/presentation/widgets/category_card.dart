import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/styles.dart';

class CategoryCard extends StatelessWidget {
  final String title, image;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
          height: 200,
          width: 170,
        ),
        Text(title, style: regularWhite14,)
      ],
    );
  }
}
