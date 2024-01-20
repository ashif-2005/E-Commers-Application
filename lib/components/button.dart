import 'package:flutter/material.dart';

class My_button extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const My_button({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(25),
        child: child,
      ),
    );
  }
}