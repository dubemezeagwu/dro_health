import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      height: 340.h,
      width: 314.h,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 314.h,
            width: 314.h,
            child: SvgPicture.asset(""),
          ),
          Text("No result found for “Ibuprofxxn”")
        ],
      ),
    );
  }
}
