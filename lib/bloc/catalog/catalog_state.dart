part of 'catalog_bloc.dart';

abstract class CatalogState extends Equatable {
  const CatalogState();

  @override
  List<Object?> get props => [];
}

class CatalogInitial extends CatalogState {}

class CatalogLoaded extends CatalogState {
  final Catalog catalog;

  const CatalogLoaded(this.catalog);
  @override
  List<Object> get props => [];
}

class CatalogError extends CatalogState {}

