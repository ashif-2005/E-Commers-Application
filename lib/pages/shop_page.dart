import 'package:e_commers/components/drawer.dart';
import 'package:e_commers/components/product_card.dart';
import 'package:e_commers/models/shop.dart';
import 'package:e_commers/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop_Page extends StatelessWidget {
  const Shop_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<shop>().Shop;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'ZenithZone',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: ()=>Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context)=>Cart_Page())),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          const SizedBox(height: 25),
          Center(
            child: Text(
              "Pick from a selected list of premium products...",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(
          height: 550,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              final pro = products[index];  
              return Product_card(p: pro);
            }
          ),
        ),
      ],
      )
    );
  }
}