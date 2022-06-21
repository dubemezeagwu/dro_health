import 'package:dro_health/utils/config/extensions.dart';
import 'package:dro_health/utils/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/model/item_model.dart';
import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CheckoutItemTile extends StatefulWidget {
  final Item item;
  const CheckoutItemTile({
    Key? key,
    required this.item
  }) : super(key: key);

  @override
  State<CheckoutItemTile> createState() => _CheckoutItemTileState();
}

class _CheckoutItemTileState extends State<CheckoutItemTile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      padding: EdgeInsets.only(top: 24.h,bottom: 24.h, right: 24.h),
      height: 127.h,
      width: 340.h,
      color: AppColors.white,
      child: Row(
        children: [
          Container(
              height: 80.h,
              width: 80.w,
              child: Image.asset(widget.item.image!)
          ),
          SizedBox(
            width: 14.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.item.title!),
              SizedBox(height: 8.h,),
              SizedBox(
                width: 110.w,
                height: 17.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.item.type!, style: regularLightBlack14,),
                    Container(
                      height: 3.h,
                      width: 3.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.textColor
                      ),
                    ),
                    Text(widget.item.dosage!, style: regularLightBlack14,)
                  ],
                ),
              ),
              SizedBox(height: 9.h,),
              Text(widget.item.price.toString(), style: boldBlack18,)
            ],
          ),
          // SizedBox(
          //   width: 66.w,
          // ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 31.h,
                width: 58.w,
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
                          Text(
                              "1",
                              style: regularBlack16
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 19.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){},
                      child: Icon(Icons.restore_from_trash, color: AppColors.iconPurple,)
                  ),
                  Text("Remove", style: regularPurple12,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
