import 'package:dro_health/utils/app_assets.dart';

class Item {
  final String? image;
  final String? title;
  final String? type;
  final String? dosage;
  final num? price;
  final bool? requiresPrescription;

  Item({
    this.title,
    this.image,
    this.type,
    this.dosage,
    this.price,
    this.requiresPrescription,
  });
}

