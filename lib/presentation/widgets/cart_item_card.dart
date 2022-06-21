import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CartItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final String dosage;
  final num price;
  const CartItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
    required this.dosage,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container (
      height: 275.h,
      width: 175.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.h),
          border: Border.all(width: 1.0, color: AppColors.lightTextColor),
          color: AppColors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 127.h,
                width: 175.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(11.h),
                    topRight: Radius.circular(11.h),
                  ),
                  child: Image.asset(image, fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 19.h,
                  width: 175.w,
                  color: AppColors.fadeBlack,
                  child: Center(
                      child: Text("Requires a prescription",style: regularWhite12,)
                  ),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 4.h, left: 11.w, bottom: 11.h, right: 11.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: regularBlack16,),
                  SizedBox(height: 2.h,),
                  SizedBox(
                    width: 103.w,
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
                  SizedBox(height: 8.h,),
                  SizedBox(
                    width: 175.w,
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(price.toString(), style: boldBlack18,),
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.h),
                            color: AppColors.lightIconPurple
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/images/heart.svg",
                              color: AppColors.iconPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 154.w,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1.5, color: AppColors.iconPurple)
                      ),
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                            "ADD TO CART",
                            style: regularPurple12
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
