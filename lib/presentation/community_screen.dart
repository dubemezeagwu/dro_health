import 'package:dro_health/presentation/widgets/custom_purple_button.dart';
import 'package:dro_health/presentation/widgets/item_card.dart';
import 'package:dro_health/presentation/widgets/product_details_widget.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/model/item_model.dart';
import '../utils/colors.dart';
import '../utils/config/size_config.dart';
import '../utils/styles.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Text("Community Screen"),
      ),
    );
  }
}
