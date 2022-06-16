import 'package:dro_health/utils/app_assets.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 24.h,bottom: 24.h, right: 7.h),
          height: 125.h,
          width: 340.h,
          color: Colors.amber,
          child: Row(
            children: [
              Container(
                height: 80.h,
                  width: 80.w,
                  color: Colors.green,
                  child: SvgPicture.asset("")
              ),
              SizedBox(
                width: 14.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Paracetamol"),
                  SizedBox(height: 8.h,),
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
              ),
              SizedBox(
                width: 66.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 31.h,
                    width: 58.w,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1.5, color: AppColors.lightTextColor)
                      ),
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                                "1",
                                style: regularBlack16
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 19.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.restore_from_trash),
                      Text("Remove", style: regularPurple12,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
