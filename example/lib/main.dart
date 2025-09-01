import 'package:animated_loading_ui/animated_loading_ui.dart';
import 'package:animated_loading_ui/res/icon_type.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoadingDemo());
}

class LoadingDemo extends StatelessWidget {
  const LoadingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPageDemo(),
    );
  }
}

class LoadingPageDemo extends StatefulWidget {
  const LoadingPageDemo({super.key});

  @override
  State<LoadingPageDemo> createState() => _LoadingPageDemoState();
}

class _LoadingPageDemoState extends State<LoadingPageDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              "dotsMovingRL",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            AnimatedUiLoader(),
            AnimatedUiLoader(icon: Icons.star),
            AnimatedUiLoader.dotsMovingRL(
              dotsShadows: [
                BoxShadow(
                  color: Colors.lightBlueAccent,
                  spreadRadius: 3,
                  blurRadius: 2.0,
                ),
              ],
            ),
            Text("wheel:", style: TextStyle(color: Colors.white, fontSize: 15)),
            AnimatedUiLoader.rotate(),
            Text("Fan:", style: TextStyle(color: Colors.white, fontSize: 15)),
            AnimatedUiLoader.rotate(image: IconImage.fan,),
            Text("Gear:", style: TextStyle(color: Colors.white, fontSize: 15)),
            AnimatedUiLoader.rotate(image: IconImage.gear,),
          ],
        ),
      ),
    );
  }
}
