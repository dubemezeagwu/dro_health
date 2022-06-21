part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartStarted extends CartEvent {

  @override
  List<Object?> get props => [];
}

class AddToCart extends CartEvent {
  final Item item;

  AddToCart({required this.item,});
  @override
  List<Object> get props => [item,];
}

class RemoveFromCart extends CartEvent {
  final Item item;
  final int? index;

  RemoveFromCart({required this.item,this.index});
  @override
  List<Object?> get props => [item,index];

}
