part of 'products_cubit.dart';


sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class GetProductDataSuccess extends ProductsState{}

final class FieldGetProductData extends ProductsState{
  final String massage;
  FieldGetProductData({required this.massage});
}