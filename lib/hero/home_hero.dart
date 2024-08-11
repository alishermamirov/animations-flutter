import 'package:animatsiyalar/hero/second_hero.dart';
import 'package:flutter/material.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SecondHero();
              },
            ));
          },
          child: Hero(
            tag: "rasm",
            child: FadeInImage(
              width: 250,
              height: 250,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1720048171731-15b3d9d5473f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8"),
              placeholder: AssetImage("assets/rasm.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
