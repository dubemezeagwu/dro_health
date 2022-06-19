import 'package:dro_health/utils/app_assets.dart';

class Item {
  final String image;
  final String title;
  final String type;
  final String dosage;
  final num price;
  final bool requiresPrescription;

  Item({
    required this.title,
    required this.image,
    required this.type,
    required this.dosage,
    required this.price,
    required this.requiresPrescription,
  });
}

List<Item> sampleItems = [
  Item(
      title: "Paracetamol",
      type: "Tablet",
      dosage: "500mg",
      price: 600.00,
      requiresPrescription: false,
      image: AppAssets.paracetamol
  ),
  Item(
      title: "Doliprane",
      type: "Capsule",
      dosage: "1000mg",
      price: 350.00,
      image: "assets/images/doliprane2.png",
      requiresPrescription: true,

  ),
  Item(
      title: "Ibuprofen",
      type: "Tablet",
      dosage: "200mg",
      price: 350.00,
      image: "assets/images/ibuprofen2.png",
      requiresPrescription: false
  ),Item(
      title: "Panadol",
      type: "Tablet",
      dosage: "500mg",
      price: 350.00,
      image: "assets/images/panadol2.png",
      requiresPrescription: false
  )
];