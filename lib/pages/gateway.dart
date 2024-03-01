import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GateWay extends StatelessWidget {
  const GateWay({super.key});

  void button_pressed(BuildContext context){
    showDialog(
      context: context,
      builder: (context)=> const AlertDialog(
        content: Text("Payment Successfull")
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title:const Text(
          "Payment Gateway",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
              GestureDetector(
                onTap: () => button_pressed(context),
                child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.payment,
                          size: 40,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "UPI (Unified Payment \nInterface)",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 40,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
                            ),
                          ),
              ),
          GestureDetector(
            onTap: () => button_pressed(context),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.payment,
                          size: 40,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Mobile Wallets",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 40,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => button_pressed(context),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.payment,
                          size: 40,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Card Payment",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 40,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => button_pressed(context),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.payment,
                          size: 40,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Net Banking",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 40,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: () => button_pressed(context),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.payment,
                          size: 40,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Cash On Delivery",
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 40,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        ],
      )
    );
  }
}