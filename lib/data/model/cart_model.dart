import 'package:equatable/equatable.dart';

import 'item_model.dart';

class Cart extends Equatable {
  final List<Item> items;

  const Cart({this.items = const <Item>[]});

  num get totalPrice {
    return items.fold(0, (total, current) => total + current.price!);
  }

  @override
  List<Object?> get props => [items];
}