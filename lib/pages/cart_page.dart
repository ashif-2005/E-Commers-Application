import 'package:e_commers/components/button.dart';
import 'package:e_commers/models/product.dart';
import 'package:e_commers/models/shop.dart';
import 'package:e_commers/pages/gateway.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  void removeItemFromCart(BuildContext context,product p){
    showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        content: Text("Do you want to romove this item from your cart."),
        actions: [
          MaterialButton(
            onPressed: ()=>Navigator.pop(context),
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.pop(context);
              context.read<shop>().removeFromCart(p);    
          },   
          child: Text("Remove"),
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<shop>().Cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty ? const Center(child:Text("Your cart is empty..."))
            :ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index){
                final item = cart[index];
                return ListTile(
                  leading: Image.asset(item.address),
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: ()=> removeItemFromCart(context,item),
                  )
                );
              },
            )
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: My_button(onTap: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>GateWay())
              )
            }, child: Text("Pay Now")),
          ),
        ],
      ),
    );
  }
}