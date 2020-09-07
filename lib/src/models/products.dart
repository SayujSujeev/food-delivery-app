import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel{
  static const ID = "id";
  static const NAME = "name";
  static const RATING = "rating";
  static const RATES = "rates";
  static const IMAGE = "image";
  static const PRICE = "price";
  static const RESTAURANT_ID = "restaurantId";
  static const RESTAURANT = "restaurant";
  static const CATEGORY = "category";
  static const FEATURED = "featured";
  static const DESCRIPTION = "description";

  String _id;
  String _name;
  double _rating;
  String _image;
  int _rates;
  String _restaurantId;
  String _restaurant;
  int _price;
  String _category;
  String _description;


  //getters

  String get id => _id;
  String get name => _name;
  double get rating => _rating;
  String get image => _image;
  int get rates => _rates;
  String get restaurant => _restaurant;
  String get restaurantId => _restaurantId;
  int get price => _price;
  String get category => _category;
  String get description => _description;


  ProductModel.fromSnapshot(DocumentSnapshot snapshot){
    _id = snapshot.data()[ID];
    _name = snapshot.data()[NAME];
    _rating = snapshot.data()[RATING];
    _image = snapshot.data()[IMAGE];
    _rates = snapshot.data()[RATES];
    _restaurant = snapshot.data()[RESTAURANT];
    _restaurantId = snapshot.data()[RESTAURANT_ID];
    _price = snapshot.data()[PRICE];
    _category = snapshot.data()[CATEGORY];
    _description = snapshot.data()[DESCRIPTION];
  }


}