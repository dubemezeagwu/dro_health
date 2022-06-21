import 'package:dro_health/bloc/cart/cart_bloc.dart';
import 'package:dro_health/presentation/widgets/checkout_item_tile.dart';
import 'package:dro_health/presentation/widgets/custom_purple_button.dart';
import 'package:dro_health/utils/colors.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/item_model.dart';
import '../widgets/category_card.dart';
class CheckoutCartScreen extends StatefulWidget {
  const CheckoutCartScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutCartScreen> createState() => _CheckoutCartScreenState();
}

class _CheckoutCartScreenState extends State<CheckoutCartScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: CustomScrollView(
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
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24.w),
                    child: Icon(Icons.shopping_cart),
                  ),
                  Text("Cart"),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    Container(
                      height: 700.h,
                      width: SizeConfig.screenWidth,
                      child: BlocBuilder<CartBloc,CartState>(
                          builder: (context,state){
                            if (state is CartInitial){
                              return CircularProgressIndicator();
                            }
                            if (state is CartLoaded){
                              print("Length: ${state.cart!.items.length}");
                              return ListView.separated(
                                separatorBuilder: (_,__) => SizedBox(height: 4.h,),
                                  itemCount: state.cart!.items.length,
                                  itemBuilder: (context,index){
                                    // final item = state.cart!.items[0];
                                    final item = state.cart!.items[index];
                                    return CheckoutItemTile(item: item);
                                  });
                            }
                            return Text("Something went wrong");
                          }
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Total: 1650.00",style: regularBlack16,),
                        CustomPurpleButton(
                          width: 200.w,
                          height: 50.h,
                          widget: Center(
                              child: Text("CHECKOUT",style: TextStyle(
                                color: AppColors.white
                              ),)
                          ),)
                      ],),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
