import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('سنگ   کاغذ   قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('images/$top.png'),
                height: 100.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Image(
                image: AssetImage('images/$bottom.png'),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
