import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: 126,
      color: Colors.amber,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.supplements,
          ),
          Text("Headache", style: regularWhite14,)
        ],
      ),
    );
  }
}
