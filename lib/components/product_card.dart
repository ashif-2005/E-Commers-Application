import 'package:e_commers/models/product.dart';
import 'package:e_commers/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product_card extends StatelessWidget {
  final product p;
  const Product_card({super.key, required this.p});

  void addToCart(BuildContext context){
    showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        content: Text("Add this item to your cart."),
        actions: [
          MaterialButton(
            onPressed: ()=>Navigator.pop(context),
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.pop(context);
              context.read<shop>().addToCart(p);
          },
          child: Text("Add"),
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)
              ),
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: Image.asset(p.address)
            ),
          ),

          SizedBox(height: 25,),

          Text(
            p.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),

          SizedBox(height: 10,),

          Text(
            p.description,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + p.price.toStringAsFixed(2),
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(
                  onPressed: ()=> addToCart(context),
                  icon: Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}