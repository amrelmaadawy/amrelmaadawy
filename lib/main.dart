import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/assingment/login/login.dart';
import 'package:shop_app/provider/cart.dart';
import 'package:shop_app/shopApp/checkOut/checkOut.dart';
import 'package:shop_app/shopApp/detials/detialsScreen.dart';
import 'package:shop_app/shopApp/homeLayout/homeLayout.dart';
import 'package:shop_app/shopApp/login/loginScreen.dart';
import 'package:shop_app/shopApp/register/registerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cart(),
      child: MaterialApp(
        themeMode:ThemeMode.system ,
        theme:ThemeData(appBarTheme:AppBarTheme(color: Colors.green.shade800),
     primarySwatch:Colors.green
         ) ,
        debugShowCheckedModeBanner: false,
      home:loginScreen()
      ),
    );
  }
}
