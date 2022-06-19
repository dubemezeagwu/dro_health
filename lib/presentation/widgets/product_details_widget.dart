import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';

class ProductDetailsWidget extends StatelessWidget {
  final String icon, title, description;
  const ProductDetailsWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      margin: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
      height: 40.h,
      width: 175.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon, color: AppColors.iconPurple,),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: regularTeal10,),
              Text(description, style: regularTeal14,),
            ],
          ),
        ],
      ),
    );
  }
}
