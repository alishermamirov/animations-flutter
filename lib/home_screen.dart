import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  double _cubeSize = 150;
  bool _isIncrease = true;
  late Animation<double> _animationOpacity;
  late AnimationController animationCotroller;
  // late Animation<Size> _cubeSizeAnimation;

  // @override
  // void initState() {
  //   super.initState();
  //   animationCotroller =
  //       AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  //   _cubeSizeAnimation = Tween<Size>(
  //     begin: Size(150, 150),
  //     end: Size(300, 300),
  //   ).animate(
  //     CurvedAnimation(
  //       parent: animationCotroller,
  //       curve: Curves.ease,
  //     ),
  //   );

  //   // _cubeSizeAnimation.addListener(
  //   //   () => setState(() {}),
  //   // );
  // }
  @override
  void initState() {
    super.initState();
    animationCotroller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationCotroller,
        curve: Curves.linear,
      ),
    );
  }

  void toggleSize() {
    setState(() {
      if (_isIncrease) {
        _cubeSize = 300;
        _isIncrease = false;
        animationCotroller.forward();
      } else {
        _cubeSize = 150;
        _isIncrease = true;
        animationCotroller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      backgroundColor: Colors.grey,
      // body: AnimatedBuilder(
      //   animation: animationCotroller,
      //   builder: (BuildContext context, Widget? child) {
      //     return Center(
      //       child: Card(
      //         elevation: 10,
      //         child: Container(
      //           height: _cubeSizeAnimation.value.height,
      //           width: _cubeSizeAnimation.value.width,
      //         ),
      //       ),
      //     );
      //   },
      // ),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: _cubeSize,
          height: _cubeSize,
          color: Colors.blue,
          curve: Curves.ease,
          child: Center(
              child: FadeTransition(
            opacity: _animationOpacity,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
                fontSize: _cubeSize / 10,
                fontWeight: FontWeight.bold,
              ),
              duration: Duration(milliseconds: 500),
              child: Text(
                "Salom",
              ),
            ),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggleSize();
        },
      ),
    );
  }
}
