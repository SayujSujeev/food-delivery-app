import 'package:cloud_firestore/cloud_firestore.dart';

class CartItemModel{
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const PRICE = "price";
  static const PRODUCT_ID = "restaurantId";
  static const QUANTITY = "quantity";


  String _id;
  String _name;
  String _image;
  String _productId;
  double _price;
  int _quantity;


  //getters

  String get id => _id;
  String get name => _name;
  String get image => _image;
  String get productId => _productId;
  double get price => _price;
  int get quantity => _quantity;


  CartItemModel.fromSnapshot(DocumentSnapshot snapshot){
    _id = snapshot.data()[ID];
    _name = snapshot.data()[NAME];
    _image = snapshot.data()[IMAGE];
    _productId = snapshot.data()[PRODUCT_ID];
    _price = snapshot.data()[PRICE];
    _quantity = snapshot.data()[QUANTITY];
  }
}