import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app_with_sm/models/shop.dart';
import '../pages/cart_page.dart';
import '../pages/intro_page.dart';
import 'pages/shop_page.dart';
import '../themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
