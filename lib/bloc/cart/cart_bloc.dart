import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dro_health/data/repository/shop_repository.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/cart_model.dart';
import '../../data/model/item_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ShopRepository cartRepository;
  CartBloc({required this.cartRepository,}) : super(CartInitial()) {
    on<CartStarted>(_onStarted);
    on<AddToCart>(_onItemAdded);
    on<RemoveFromCart>(_onItemRemoved);
  }

  void _onStarted (CartStarted event, Emitter<CartState> emit) async {
    emit(CartInitial());
    try {
      final cartItems = await cartRepository.loadCartItems();
      emit(CartLoaded(cart: Cart(items: [...cartItems])));
    }catch(_){
      emit(CartError());
    }
  }

  void _onItemAdded (AddToCart event, Emitter<CartState> emit) async {
    final state = this.state;
    if (state is CartLoaded){
      try {
        cartRepository.addItemToCart(event.item);
        emit (CartLoaded(cart: Cart(items: [...state.cart.items, event.item])));
      } catch (_){
        emit (CartError());
      }
    }
  }

  void _onItemRemoved (RemoveFromCart event, Emitter<CartState> emit) async {
    final state = this.state;
    if(state is CartLoaded){
      try {
        cartRepository.removeItemFromCart(event.item);
        emit(CartLoaded(cart: Cart(items: [...state.cart.items]..remove(event.item))));
      } catch (_){

      }
    }
  }
}
