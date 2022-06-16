import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container (
      height: 222.h,
      width: 168.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.h),
          color: Colors.amber
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
                  child: SvgPicture.asset("assets/images/doliprane2.svg", fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 19.h,
                  width: 168.w,
                  color: AppColors.fadeBlack,
                  child: Center(
                      child: Text("Requires a prescription",style: regularWhite12,)
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
                  SizedBox(height: 9.h,),
                  Text("N350.00", style: boldBlack18,)
                ],
              )
          ),

        ],
      ),
    );
  }
}
