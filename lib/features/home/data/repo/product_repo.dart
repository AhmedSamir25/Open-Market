import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:open_market/features/home/data/model/product_model.dart';

class ProductRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ProductModel>> getProductData() async {
      final productsSnapshot = await _firestore.collection("products")
          .orderBy('time', descending: false)
          .get();
      List<ProductModel> products = [];
      for (var element in productsSnapshot.docs) {
        products.insert(0, ProductModel.fromFirestore(element));
      }
      return products;
  } 
}
