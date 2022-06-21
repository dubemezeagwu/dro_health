import 'package:dro_health/data/model/item_model.dart';
import 'package:dro_health/presentation/widgets/cart_item_card.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ItemSearch extends SearchDelegate{
  final items = [
    Item(
        title: "Paracetamol",
        image: "assets/images/paracetamol.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    ),
    Item(
        title: "Panadol",
        image: "assets/images/panadol2.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    ),
    Item(
        title: "Ibuprofen",
        image: "assets/images/ibuprofen2.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    ),
    Item(
        title: "assets/images/doliprane.png",
        image: "assets/images/doliprane.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    ),Item(
        title: "Paracetamol",
        image: "assets/images/paracetamol.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    )
  ];

  final recentItems = [
    Item(
      title: "Paracetamol",
      image: "assets/images/paracetamol.png",
      price: 350.00,
      requiresPrescription: false,
      type: "Tablet",
      dosage: "500mg"
    ),
    Item(
        title: "Panadol",
        image: "assets/images/panadol2.png",
        price: 350.00,
        requiresPrescription: false,
        type: "Tablet",
        dosage: "500mg"
    )
  ];


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      TextButton(
          onPressed: (){
            query.isEmpty ? close(context,null) : query = "";
          },
          child: Text("Cancel"))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    SizeConfig.init(context);
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: CartItemCard(title: 'Paracetamol', dosage: '500mg', image: 'assets/images/paracetamol.png', type: 'Tablet', price: 350,));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentItems : items.where((element) => element.title!.startsWith(query)).toList();
    return GridView.builder(
        itemBuilder: (context, index) => Center(
          child: CartItemCard(
              image: suggestionList[index].image!,
              title: suggestionList[index].title!,
              type: suggestionList[index].type!,
              dosage: suggestionList[index].dosage!,
              price: suggestionList[index].price!),
        ),
      itemCount: suggestionList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        mainAxisExtent: 300
      ),
    );
  }

}