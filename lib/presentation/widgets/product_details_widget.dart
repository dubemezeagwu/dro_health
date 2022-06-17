import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
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
      color: Colors.green,
      margin: EdgeInsets.only(top: 5,right: 5,left: 5,bottom: 5),
      height: 40.h,
      width: 175.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
                border: Border.all(color: AppColors.lightTextColor,width: 1)
            ),
            child: SvgPicture.asset(icon),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(description),
            ],
          ),
        ],
      ),
    );
  }
}
