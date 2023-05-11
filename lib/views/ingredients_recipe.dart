import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.duration,
    required this.calorie,
    required this.serving,
    required this.id,
    required this.ingredients,
    required this.recipe,
    required this.name,
    required this.imageurl,
    required this.price,
  });
  final String id;
  final String price;
  final List<String> ingredients;
  final List<String> recipe;
  final String imageurl;
  final String name;
  final int duration;
  final String calorie;
  final double serving;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(imageurl),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              bottom: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 0),
                child: Container(
                  height: 500,
                  width: 370,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 61, 26, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          // textBaseline: TextBaseline.alphabetic,
                          children: [
                            const Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Text(
                              price,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            const Icon(
                              Icons.timer,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$duration mins ',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            const Icon(
                              Icons.local_dining_rounded,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              serving.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Ingredients',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 100,
                          width: 300,
                          child: ListView.builder(
                              itemCount: ingredients.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.purpleAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Text(
                                      ingredients[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Instructions',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.all(10),
                          height: 135,
                          width: 300,
                          child: ListView.builder(
                              itemCount: recipe.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.purpleAccent,
                                      child: Text(
                                        '# ${index + 1}',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                    title: Text(
                                      recipe[index],
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ));
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// ●