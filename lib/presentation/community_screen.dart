import 'package:dro_health/presentation/widgets/custom_app_button.dart';
import 'package:dro_health/presentation/widgets/item_card.dart';
import 'package:dro_health/presentation/widgets/product_details_widget.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../utils/config/size_config.dart';
import '../utils/styles.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 70,
          pinned: true,
          elevation: 0,
          centerTitle: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)
            )
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Text("Pharmacy"),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 24.w),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      SizedBox(height: 19.h,),
                      Container(
                        height: 170.h,
                        width: 170.w,
                        color: Colors.amber,
                        child: SvgPicture.asset(""),
                      ),
                      SizedBox(height: 13.h,),
                      Text("Emzor Paracetamol"),
                      SizedBox(height: 8.h,),
                      SizedBox(
                        height: 22.h,
                        width: 121.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tablet", style: regularLightBlack14,),
                            Container(
                              height: 1.h,
                              width: 2.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: AppColors.textColor
                              ),
                            ),
                            Text("500mg", style: regularLightBlack14,)
                          ],
                        ),
                      ),
                      SizedBox(height: 39.h,),
                      SizedBox(
                        height: 40.h,
                        width: 370.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white,
                                  border: Border.all(color: AppColors.lightTextColor,width: 1)
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("SOLD BY"),
                                Text("Emzor Pharmaceuticals"),
                              ],
                            ),
                            Spacer(),
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
                        height: 22.h,
                      ),
                      SizedBox(
                        height: 40.h,
                        width: 370.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40.h,
                              width: 96.w,
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
                                        Icon(Icons.remove,size: 20,),
                                        Text("1"),
                                        Icon(Icons.add,size: 20,)
                                      ],
                                    )
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                            Text("Pack(s)"),
                            Spacer(),
                            Container(
                              height: 39.h,
                              width: 105.w,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Text("N"),
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: "600",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 32.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                          children: [
                                            TextSpan(
                                              text: ".00",style: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                            )
                                          ]
                                      )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 34.h,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("PRODUCT DETAILS"),
                      ),
                      SizedBox(height: 21.h,),
                      SizedBox(
                        height: 100,
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 50
                          ),
                          children: const <Widget>[
                            ProductDetailsWidget(
                              icon: "",
                              title: "PACK SIZE",
                              description: "8 X 12 tablets (96)",
                            ),
                            ProductDetailsWidget(
                              icon: "",
                              title: "PRODUCT ID",
                              description: "PRO23648856",
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: ProductDetailsWidget(
                                icon: "",
                                title: "CONSTITUENTS",
                                description: "Paracetamol",
                              ),
                            ),
                            ProductDetailsWidget(
                              icon: "",
                              title: "DISPENSED IN",
                              description: "Packs",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 42,
                        width: 325,
                        child: Text("1 pack of Emzor Paracetamol (500mg) contains 8 units of 12 tablets."),
                      ),
                      SizedBox(height: 30.h,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Similar Products"),
                      ),
                      SizedBox(height: 30.h,),
                      SizedBox(
                        height: 230,
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Padding(
                                padding: EdgeInsets.only(right: 14.w),
                                child: ItemCard(),
                              );
                            }
                        ),
                      ),
                      SizedBox(
                        height: 44.h,
                      ),
                      CustomAppButton()
                    ],
                  ),
                )
              ],
            ),
          ),)
      ],
    );
  }
}
