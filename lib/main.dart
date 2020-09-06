import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/src/providers/auth.dart';
import 'package:food_order_app/src/screens/home.dart';
import 'package:food_order_app/src/screens/login.dart';
import 'package:food_order_app/src/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AuthProvider.initialize())
  ],
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Food App',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: ScreensController(),
  ),));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    switch (auth.status){

      case Status.Unititialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return LoginScreen();
      case Status.Authenticated:
        return Home();
      default: return LoginScreen();

    }
  }
}
