import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_order_app/src/models/order.dart';

class OrderServices{
  String collection = "orders";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createOrder({String userId,String restaurantId, String id,String description,String status, List cart, int totalPrice}) {
    _firestore.collection(collection).doc(id).set({
      "userId" : userId,
      "id" : id,
      "restaurantId" : restaurantId,
      "cart" : cart,
      "total" : totalPrice,
      "createdAt" : DateTime.now().millisecondsSinceEpoch,
      "description" : description,
      "status" : status,
    });
  }

  Future<List<OrderModel>> getUserOrders({String userId}) async =>
      _firestore
          .collection(collection)
          .where("userId", isEqualTo: userId)
          .get()
          .then((result) {
        List<OrderModel> orders = [];
        for (DocumentSnapshot order in result.docs) {
          orders.add(OrderModel.fromSnapshot(order));
        }
        return orders;
      });


}