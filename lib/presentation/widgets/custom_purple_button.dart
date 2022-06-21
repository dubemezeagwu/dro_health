import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CustomPurpleButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget widget;
  final double height;
  final double width;
  const CustomPurpleButton({Key? key, this.onTap, required this.widget, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.h),
            gradient: const LinearGradient(
                colors: [
                  AppColors.darkPurple,
                  AppColors.lightPurple
                ]
            )
        ),
        child: RawMaterialButton(
            onPressed: onTap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: widget
        ),
      ),
    );
  }
}
