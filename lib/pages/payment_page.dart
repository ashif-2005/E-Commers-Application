import 'package:flutter/material.dart';

class payment_page extends StatelessWidget {
  const payment_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 20,
            //color: Colors.black,
          ),
        ),
      ),
    );
  }
}