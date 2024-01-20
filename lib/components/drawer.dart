import 'package:e_commers/components/list.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 100,
                ),
            ),
          ),
          SizedBox(height: 25),
          List(
            text: "Shop",
            icon: Icons.home,
            onTap: ()=> Navigator.pop(context),
          ),
          List(
            text: "Cart",
            icon: Icons.shopping_cart,
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart_page');
            }
          ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: List(
              text: "Exit",
              icon: Icons.logout,
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Intropage');
              }
            ),
          ),
        ],
      ),
    );
  }
}