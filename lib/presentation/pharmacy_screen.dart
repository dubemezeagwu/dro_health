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
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Text("Pharmacy"),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 78.h,
            decoration: BoxDecoration(
                color: AppColors.darkPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: TextFormField(
                cursorColor: AppColors.black,
                decoration: InputDecoration(
                    labelText: "Search",
                    labelStyle: regularWhite14,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.h),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.h),
                    ),
                    filled: true,
                    fillColor: AppColors.white.withOpacity(0.2),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
