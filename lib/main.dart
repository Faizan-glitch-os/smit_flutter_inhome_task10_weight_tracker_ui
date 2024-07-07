import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/background.jpg',
              height: deviceheight * 0.3,
              fit: BoxFit.fill,
            ),
            Positioned(
              child: Container(
                height: deviceheight * .25,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
              ),
            ),
            Positioned(
              // top: 2,
              // left: 2,
              child: Container(
                height: deviceheight * .1,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
