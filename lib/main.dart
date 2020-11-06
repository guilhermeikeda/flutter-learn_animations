import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Animations',
      home: ImplicityAnimationPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class ImplicityAnimationPage extends StatelessWidget {
  final double size = 30.0;

  @override
  Widget build(BuildContext context) {
    return 
    AnimatedContainer(
      duration: Duration(seconds: 1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.blue],
        ),
      ),
      transform: Matrix4.identity()
        ..translate(size / 2, size / 2)
        ..multiply(Matrix4.rotationX(3.14 / 4))
        ..translate(-size / 2, -size / 2),
      height: size,
      width: size,
    );
  }
}