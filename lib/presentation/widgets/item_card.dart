import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
class ItemCard extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String title;
  final String type;
  final String dosage;
  final String price;
  final bool visible;
  const ItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
    required this.dosage,
    required this.price,
    required this.visible, required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container (
        height: 225.h,
        width: 168.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.h),
            color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurStyle: BlurStyle.outer,
              blurRadius: 4,

            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 127.h,
                  width: 168.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11.h),
                      topRight: Radius.circular(11.h),
                    ),
                    child: Image.asset(image, fit: BoxFit.cover,),
                  ),
                ),
                Visibility(
                  visible: visible,
                  child: Positioned(
                    bottom: 0,
                    child: Container(
                      height: 19.h,
                      width: 168.w,
                      color: AppColors.fadeBlack,
                      child: Center(
                          child: Text("Requires a prescription",style: regularWhite12,)
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 13.h, left: 11.w, bottom: 13.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: regularBlack16,),
                    SizedBox(height: 2.h,),
                    SizedBox(
                      width: 110.w,
                      height: 17.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(type, style: regularLightBlack14,),
                          Container(
                            height: 3.h,
                            width: 3.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.textColor
                            ),
                          ),
                          Text(dosage, style: regularLightBlack14,)
                        ],
                      ),
                    ),
                    SizedBox(height: 9.h,),
                    Text("N${price}", style: boldBlack18,)
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
