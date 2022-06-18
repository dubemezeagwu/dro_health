import 'package:dro_health/presentation/widgets/item_search.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            // pinned: true,
            floating: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
            ),
            elevation: 0,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Icon(Icons.shopping_cart),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  height: 25,
                  width: double.infinity,
                  child: TextFormField(
                    onTap: (){
                      showSearch(context: context, delegate: ItemSearch());
                    },
                    enableInteractiveSelection: true,
                    cursorColor: AppColors.black,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                      labelText: "Search",
                      labelStyle: regularWhite14,
                      enabled: true,
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
            ),
            centerTitle: false,
            title: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text("Pharmacy"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 900,
              width: 400,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}



