import 'package:animated_loading_ui/animated_loading_ui.dart';
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
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => SecondPageTest()),
  //     );
  //   });
  // }

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
            AnimatedUiLoader.wheel(),
            Text("Fan:", style: TextStyle(color: Colors.white, fontSize: 15)),
            AnimatedUiLoader.fan(color: Colors.white),
            Text("Gear:", style: TextStyle(color: Colors.white, fontSize: 15)),
            AnimatedUiLoader.gear(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
