import 'dart:ui';

import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FoodPage();
  }
}

// ignore: must_be_immutable
class _FoodPage extends State<FoodPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 75,
          backgroundColor: Colors.transparent,
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                size: 30,
                CupertinoIcons.back,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  size: 30,
                  CupertinoIcons.heart_fill,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/restaurant.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 300,
                width: 400,
                decoration: const BoxDecoration(),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  foods[index]["image"]!,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        foods[index]["text1"]!,
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        foods[index]["price"]!,
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                        child: Image.asset("assets/fire.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "3+1 Aksiya",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 25,
                        child: Image.asset("assets/bike.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "20-25 min",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (count > 1) {
                                count--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove_outlined,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "$count",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Details",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and " +
                    "typesetting industry. Lorem Ipsum has been the industry's" +
                    "standard dummy text ever since the 1500s, when an unknown printer took" +
                    " a galley of type and scrambled it to make a type specimen book",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              const Text(
                "Details",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: Image.asset("assets/bowl.png"),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: Image.asset("assets/meat.png"),
              ),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ], shape: BoxShape.circle, color: Colors.amber),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                      size: 40,
                      color: Colors.grey[800],
                    )),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: Image.asset("assets/mushroom.png"),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: Image.asset("assets/brokly.png"),
              ),
            ],
          ),
        ));
  }
}
