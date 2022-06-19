import 'package:dro_health/utils/app_assets.dart';

class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

List<Category> categories = [
  Category(title: "Headache", image: AppAssets.headache),
  Category(title: "Supplements", image: AppAssets.supplements),
  Category(title: "Infants", image: AppAssets.infants),
  Category(title: "Cough", image: AppAssets.cough),
];