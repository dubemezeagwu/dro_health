import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dro_health/data/repository/shop_repository.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/catalog_model.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final ShopRepository shopRepository;
  CatalogBloc({required this.shopRepository}) : super(CatalogInitial()) {
    on<CatalogStarted>(_onStarted);
  }

  void _onStarted(CatalogStarted event, Emitter<CatalogState> emit) async {
    emit(CatalogInitial());
    try {
      final catalog = await shopRepository.loadCatalog();
      emit(CatalogLoaded(Catalog(items: catalog)));
    } catch (_) {
      emit(CatalogError());
    }
  }
}
