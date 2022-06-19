import 'package:dro_health/utils/config/extensions.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/config/size_config.dart';
import '../../utils/styles.dart';

class CustomAppButton extends StatefulWidget {
  final double height,width;
  final Color fillColor, borderLineColor;
  final ShapeBorder shapeBorder;
  final Widget widget;
  const CustomAppButton({
    Key? key,
    required this.height,
    required this.width,
    required this.shapeBorder,
    required this.fillColor,
    required this.borderLineColor,
    required this.widget}) : super(key: key);

  @override
  State<CustomAppButton> createState() => _CustomAppButtonState();
}

class _CustomAppButtonState extends State<CustomAppButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: RawMaterialButton(
        onPressed: (){},
        fillColor: widget.fillColor,
        shape: widget.shapeBorder,
        child: widget.widget
      ),
    );
  }
}
