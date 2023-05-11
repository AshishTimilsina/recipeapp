import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipeapp/models/dummy_data.dart';
import 'package:recipeapp/views/ingredients_recipe.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({
    super.key,
    required this.categoryid,
    required this.categoryname,
  });
  final String categoryid;
  final String categoryname;
  @override
  Widget build(BuildContext context) {
    final meals = dummymeal.where((data) {
      return data.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text(categoryname),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 35,
              childAspectRatio: 1.5,
              crossAxisSpacing: 35,
            ),
            itemCount: meals.length,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => DetailPage(
                        id: meals[index].id,
                        ingredients: meals[index].ingredients,
                        name: meals[index].name,
                        recipe: meals[index].steps,
                        imageurl: meals[index].imageurl,
                        calorie: meals[index].calorie,
                        duration: meals[index].duration,
                        serving: meals[index].serving,
                        price: meals[index].price,
                      ));
                },
                child: GridTile(
                  footer: Container(
                    height: 60,
                    color: Colors.black54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          meals[index].name,
                          style: const TextStyle(
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(meals[index].imageurl),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
