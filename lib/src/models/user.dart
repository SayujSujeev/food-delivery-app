import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  static const NAME = "name";
  static const EMAIL = "email";
  static const ID = "id";
  static const STRIPE_ID = "stripeId";

  String _name;
  String _email;
  String _id;
  String _stripe_id;


  //getters
  String get name => _name;
  String get email => _email;
  String get id => _id;
  String get stripe_id => _stripe_id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
    _name = snapshot.data()[NAME];
    _email = snapshot.data()[EMAIL];
    _id = snapshot.data()[ID];
    _stripe_id = snapshot.data()[STRIPE_ID];

  }

}