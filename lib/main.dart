import 'package:animatsiyalar/helpers/custom_route.dart';
import 'package:animatsiyalar/hero/home_hero.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: customPagetr(),
          },
        ),
      ),
      home: HomeHero(),
    );
  }
}
