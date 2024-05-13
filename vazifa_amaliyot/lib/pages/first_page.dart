import 'dart:ui';

import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:dras_14_amaliyot/pages/food_page.dart';
import 'package:dras_14_amaliyot/widgets/burger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flexible(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/restaurant.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hi Zesan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 50,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/profile.jpg"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "What do you want\nfor dinner",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [for (int i = 0; i < 7; i++) const Burger()],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      for (int i = 0; i < 4; i++) func(i, context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_filled,
                    size: 40,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.grey,
                  )),
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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart_fill,
                    size: 40,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 40,
                    color: Colors.grey,
                  )),
            ],
          ),
        ));
  }

  Widget func(int i, BuildContext context) {
    return InkWell(
      onTap: () {
        index = i;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FoodPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          children: [
            SizedBox(
              width: 160,
              height: 100,
              child: Image.asset(
                foods[i]["image"]!,
                width: double.infinity,
              ),
            ),
            Text(
              foods[i]["text1"]!,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            Text(
              foods[i]["text2"]!,
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            SizedBox(
                width: 180,
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          foods[i]["price"]!,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 21),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              foods[i]['check'] = !foods[i]['check'];
                            });
                          },
                          icon: foods[i]['check']
                              ? const Icon(Icons.favorite_border)
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.orange,
                                ),
                          iconSize: 34,
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
