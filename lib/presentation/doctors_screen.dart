import 'package:dro_health/presentation/widgets/item_search.dart';
import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Center(
          child: Text("Doctors Screen"),
        ),
    );
  }
}
