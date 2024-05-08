import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_market/features/home/data/repo/product_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._productRepo) : super(ProductsInitial());
  final ProductRepo _productRepo;
  Future getProductData() async{
    try{
    await _productRepo.getProductData();
    emit(GetProductDataSuccess());
    } catch (e){
      emit(FieldGetProductData(massage: e.toString()));
    }
    }
}
