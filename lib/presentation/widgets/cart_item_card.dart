import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container (
      height: 270.h,
      width: 175.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.h),
          border: Border.all(width: 1.0, color: AppColors.lightTextColor),
          color: Colors.amber
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
                  child: SvgPicture.asset("assets/images/doliprane2.svg", fit: BoxFit.cover,),
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
                  Text("Paracetamol", style: regularBlack16,),
                  SizedBox(height: 2.h,),
                  SizedBox(
                    width: 103.w,
                    height: 17.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tablet", style: regularLightBlack14,),
                        Container(
                          height: 3.h,
                          width: 3.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.textColor
                          ),
                        ),
                        Text("500mg", style: regularLightBlack14,)
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
                        Text("N350.00", style: boldBlack18,),
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.h),
                              color: AppColors.navItemColor
                          ),
                          child: Icon(Icons.heart_broken,size: 20,),
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
