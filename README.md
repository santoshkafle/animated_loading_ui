# animated_loading_ui

A simple flutter loading ui package with dots and image.

## Features

✅ Multiple loading animations
✅ Easy to customize (color, size, shadows)
✅ Lightweight and fast

## Preview
<img src="https://github.com/santoshkafle/animated_loading_ui/blob/main/loading_gift.gif" width="300">


## Getting started

Add this in your project dependencies: 'animated_loading_ui: ^0.0.2'

## Usage

This is Simple way to use, see example to know more.

''''dart
import 'package:animated_loading_ui/animated_loading_ui.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedUiLoader.dotsMovingRL(
              dotsShadows: [
                BoxShadow(
                  color: Colors.lightBlueAccent,
                  spreadRadius: 3,
                  blurRadius: 2.0,
                ),
              ],
        ),
    );
  }
}
''''

Another one.

'''''dart
import 'package:animated_loading_ui/animated_loading_ui.dart';
import 'package:animated_loading_ui/res/icon_type.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedUiLoader.rotate(image: IconImage.fan,),
    );
  }
}
''''''

There is 3 type of image you can use.

'image: IconImage.fan, IconImage.wheel, IconImage.gear'

## Issues & Feedback

Found a bug? Have a feature request?  
Please open an issue on our GitHub tracker:  
[📌 Open an Issue](https://github.com/santoshkafle/animated_loading_ui/issues)
