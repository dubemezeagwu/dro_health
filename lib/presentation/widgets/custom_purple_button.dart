import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CustomPurpleButton extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomPurpleButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 364.w,
        height: 50.h,
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
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 12.w,),
                  Text("Add to Cart", style: regularWhite14,)
                ],
              )
          ),
        ),
      ),
    );
  }
}
