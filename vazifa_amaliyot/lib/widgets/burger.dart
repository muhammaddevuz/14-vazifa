import 'package:flutter/material.dart';

class Burger extends StatelessWidget{
  const Burger({super.key});

  @override
  Widget build(BuildContext context){
    return Row(
    children: [
      Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const[ BoxShadow(color: Colors.grey, blurRadius: 5)]),
        child: Center(
          child: Image.asset("assets/burger.png"),
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
  }
}