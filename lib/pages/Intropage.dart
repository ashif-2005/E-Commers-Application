import 'package:e_commers/components/button.dart';
import 'package:flutter/material.dart';

class Intopage extends StatefulWidget {
  const Intopage({super.key});

  @override
  State<Intopage> createState() => _IntopageState();
}

class _IntopageState extends State<Intopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 150,
              ),
              SizedBox(height: 25,),
            Text(
              "RapidRack",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Shop At The Speed Of Thought.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Never a better time than now to start.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25,),
            My_button(
              onTap: ()=> Navigator.pushNamed(context, '/shop_page'),
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}