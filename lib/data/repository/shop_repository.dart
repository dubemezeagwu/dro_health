import '../../utils/app_assets.dart';
import '../model/item_model.dart';


final _delay = Duration(milliseconds: 800);

class ShopRepository {
  final  _items = <Item>[];

  Future <List<Item>>  loadCatalog() => Future.delayed(_delay, () => _catalog);

  Future<List<Item>> loadCartItems() => Future.delayed(_delay, () => _items);

  void addItemToCart(Item item) => _items.add(item);

  void removeItemFromCart(Item item) => _items.remove(item);
}

List<Item> _catalog = [
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