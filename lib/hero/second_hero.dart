import 'package:flutter/material.dart';

class SecondHero extends StatelessWidget {
  const SecondHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Hero(
        // tag: "rasm",
        tag: "ras1",
        child: FadeInImage(
          width: MediaQuery.of(context).size.width,
          height: 250,
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://images.unsplash.com/photo-1720048171731-15b3d9d5473f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8"),
          placeholder: AssetImage("assets/rasm.jpg"),
        ),
      ),
    );
  }
}
