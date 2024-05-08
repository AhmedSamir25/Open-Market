import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

class ProductModel {
  String? productId;
  String? productName;
  String? productDescription;
  String? productImage;
  String? productPrice;
  String? productCategory;
  int? bathRoomCount;
  int? bedRoomCount;
  int? areaCount;
  ProductModel(
      {required this.productId,
      required this.productDescription,
      required this.productName,
      required this.productImage,
      required this.productPrice,
      required this.productCategory,
      this.areaCount,
      this.bathRoomCount,
      this.bedRoomCount,
      });
  factory ProductModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return ProductModel(
      productId: data['productId'],
      productName: data['name'] ?? 'uknow',
      productPrice: data['price'],
      productCategory: data['productCategory'],
      productDescription: data['description'],
      productImage: data['productImage'],
      bathRoomCount: data['bathRoomCount'],
      bedRoomCount: data['bedRoomCount'],
      areaCount: data['areaCount'],
    );
  }
}