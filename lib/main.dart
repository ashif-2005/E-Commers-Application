import 'package:e_commers/models/shop.dart';
import 'package:e_commers/pages/Intropage.dart';
import 'package:e_commers/pages/cart_page.dart';
import 'package:e_commers/pages/shop_page.dart';
import 'package:e_commers/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => shop(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Intopage(),
      theme: light_theme,
      routes: {
        '/Intropage':(context) => const Intopage(),
        '/shop_page':(context) => const Shop_Page(),
        '/cart_page':(context) => const Cart_Page(),
      },
    );
  }
}
