import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/dummy_data.dart';
import 'category_detail.dart';

class Categoryitems extends StatelessWidget {
  const Categoryitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              itemCount: categoriesMeal.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return GridTile(
                  footer: Container(
                    height: 50,
                    color: Colors.black54,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          categoriesMeal[index].name,
                          style: const TextStyle(
                            fontFamily: 'RobotoCondensed',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => CategoryDetail(
                              categoryid: categoriesMeal[index].id,
                              categoryname: categoriesMeal[index].name,
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              categoriesMeal[index].imageurl,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
