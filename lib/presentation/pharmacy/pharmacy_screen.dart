import 'package:dro_health/bloc/cart/cart_bloc.dart';
import 'package:dro_health/bloc/catalog/catalog_bloc.dart';
import 'package:dro_health/data/model/category_model.dart';
import 'package:dro_health/data/model/item_model.dart';
import 'package:dro_health/presentation/pharmacy/all_categories_screen.dart';
import 'package:dro_health/presentation/pharmacy/checkout_cart_screen.dart';
import 'package:dro_health/presentation/pharmacy/item_details_screen.dart';
import 'package:dro_health/presentation/widgets/category_card.dart';
import 'package:dro_health/presentation/widgets/custom_app_button.dart';
import 'package:dro_health/presentation/widgets/item_card.dart';
import 'package:dro_health/presentation/widgets/item_search.dart';
import 'package:dro_health/presentation/widgets/product_details_widget.dart';
import 'package:dro_health/utils/app_assets.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/routes/router.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                  child: GestureDetector(
                    onTap: (){
                      routeTo(context, CheckoutCartScreen());
                    },
                      child: Icon(Icons.shopping_cart)
                  ),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Expanded(
                    child: Container(
                      height: 25,
                      width: 400,
                      child: TextFormField(
                        onTap: (){
                          showSearch(context: context, delegate: ItemSearch());
                        },
                        enableInteractiveSelection: true,
                        cursorColor: AppColors.black,
                        cursorHeight: 8.h,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          labelText: "Search",
                          labelStyle: regularWhite12,
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
              ),
              centerTitle: false,
              title: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text("Pharmacy"),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 49.h,
                    width: double.infinity,
                    color: AppColors.grey,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.w),
                      child: SizedBox(
                        width: 150.w,
                        height: 17.h,
                        child: Row(
                          children: [
                            Container(
                              height: 20.h,
                              width: 20.w,
                              child: SvgPicture.asset("assets/icons/location.svg"),
                            ),
                            SizedBox(width: 6.w,),
                            RichText(
                                text: TextSpan(
                              text: "Delivery in ",
                                  style: regularBlack16,
                                  children: [
                                    TextSpan(
                                      text: "Lagos, NG",
                                      style: boldBlack18
                                    )
                                  ]
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("CATEGORIES",style: regularLightBlack18,),
                        TextButton(
                            onPressed: (){
                              routeTo(context, AllCategoriesScreen());
                            },
                            child: Text(
                              "VIEW ALL", style: TextStyle(
                              color: AppColors.iconPurple
                            ),)
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryCard(
                          image: categories[index].image,
                          title: categories[index].title,);
                      },
                    ),
                  ),
                  // SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text("SUGGESTIONS", style: regularLightBlack18,)
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  BlocBuilder<CatalogBloc, CatalogState>(
                      builder: (context,state){
                        if (state is CatalogInitial){
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state is CatalogLoaded){
                          return SizedBox(
                            height: 780.h,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.w,right: 24.w,),
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 250,
                                    crossAxisSpacing: 20,
                                ),
                                itemCount: state.catalog.items.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      ItemCard(
                                        title: state.catalog.items[index].title!,
                                        dosage: state.catalog.items[index].dosage!,
                                        visible: state.catalog.items[index].requiresPrescription!,
                                        image: state.catalog.items[index].image!,
                                        type: state.catalog.items[index].type!,
                                        price: state.catalog.items[index].price!.toString(),
                                        onTap: () {
                                          routeTo(context, ItemDetailsScreen(item: state.catalog.items[index]));
                                        },
                                      ),
                                      SizedBox(height: 20,)
                                    ],
                                  );
                                },
                              ),
                            ),
                          );
                        }
                        return Text("Something went wrong");
                      }
                  )
                ],
              )
            )
          ],
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: AppColors.white,
                width: 2
            )
          ),
          child: CustomAppButton(
            onTap: (){
              routeTo(context, CheckoutCartScreen());
            },
            height: 43.h,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Checkout", style: regularWhite14,),
                Icon(Icons.shopping_cart,color: AppColors.white,),
                // Container(
                //   height: 18.h,
                //   width: 18.w,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Colors.amber,
                //   ),
                //   child: BlocBuilder(
                //     builder: (context,state){
                //       if (state is CartLoaded){
                //         return Center(
                //             child: Text(state.cart.items.length.toString())
                //         );
                //       }
                //       return Center(
                //         child: Text("0"),
                //       );
                //     },
                //   ),
                // )
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber
                  ),
                  child: Center(child: Text("")),
                )
              ],
            ),
            fillColor: AppColors.lightPeach,
            borderLineColor: AppColors.white,
            shapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            width: 138.w,),
        )
      ),
    );
  }
}



