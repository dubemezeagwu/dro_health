import 'package:equatable/equatable.dart';

import 'item_model.dart';

class Catalog extends Equatable {
  Catalog({required this.items});

  final List<Item> items;

  // Item getById(int id) => Item(id, items[id % items.length]);

  // Item getByPosition(int position) => getById(position);

  @override
  List<Object> get props => [items];
}