import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:dro_health/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ItemSearch extends SearchDelegate{
  final items = [
    "Panadol",
    "Paracetamol",
    "Septrin",
    "Ibuprofen",
    "Doliprane",
  ];

  final recentItems = [
    "Panadol",
    "Septrin",
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
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentItems : items.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            showResults(context);
          },
      leading: Icon(Icons.shopping_cart),
      title: RichText(
        text: TextSpan(
          text: suggestionList[index].substring(0,query.length),
          style: boldBlack18,
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: AppColors.lightTextColor)
            )
          ]
        ),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }

}