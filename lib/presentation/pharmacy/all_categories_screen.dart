import 'package:dro_health/data/model/category_model.dart';
import 'package:dro_health/presentation/widgets/category_card.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:flutter/material.dart';

import '../../utils/config/size_config.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                  width: 400,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        mainAxisExtent: 160,
                        crossAxisSpacing: 3
                      ),
                      itemBuilder: (context, index){
                        return CategoryCard(
                            title: categories[index].title,
                            image: categories[index].image);
                      },
                    itemCount: categories.length,
                  ),
                )
              ],
            ))
        ],
      ),
    );
  }
}
