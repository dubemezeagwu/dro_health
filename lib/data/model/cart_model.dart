import 'package:equatable/equatable.dart';

import 'item_model.dart';

class Cart extends Equatable {
  const Cart({this.items = const <Item>[]});
  final List<Item> items;

  num get totalPrice {
    return items.fold(0, (total, current) => total + current.price!);
  }

  @override
  List<Object> get props => [items];
}