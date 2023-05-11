import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:recipeapp/views/categories_item.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../constants/home_page_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/lol.jpg'), fit: BoxFit.cover),
              ),
            ),
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 360,
                    ),
                    const Text(
                      'Cooking Experience Like a Chef',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: kstylehomepage1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Center(
                        child: Text(
                          'Let\'s make a delicious dish with the best recipe for the family',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          maxLines: 2,
                          style: kstylehomepage2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: SlideAction(
                        onSubmit: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Categoryitems();
                          }));
                        },
                        sliderRotate: false,
                        text: '           Get Started',
                        textStyle: const TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        sliderButtonIcon: const Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.green,
                        ),
                        outerColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
