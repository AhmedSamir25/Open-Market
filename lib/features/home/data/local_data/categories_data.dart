import 'package:open_market/core/constant/assets_manager.dart';
import 'package:open_market/features/home/data/model/categories_model.dart';

class  CategoriesItemData{

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      iconCate:AssetsManager.carIcon,
      name: "Vehicles",
    ),
    CategoriesModel(
      iconCate:AssetsManager.homeIcon,
      name: "Homes & flats",
    ),
    CategoriesModel(
      iconCate:AssetsManager.phoneIcon,
      name: "Phone",
    ),
    CategoriesModel(
      iconCate:AssetsManager.pcIcon,
      name: "Pc",
    ),
    CategoriesModel(
      iconCate:AssetsManager.clothesIcon,
      name: "Clothes",
    ), 
    CategoriesModel(
      iconCate:AssetsManager.electricalIcon,
      name: "Electrical devices",
    ),
    CategoriesModel(
      iconCate:AssetsManager.furnitureIcon,
      name: "furniture",
    ),
  ];
}