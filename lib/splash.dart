import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:news_app_197110008/main.dart';
import 'package:news_app_197110008/services/navigation.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HalamanPertama()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.now_widgets_sharp,
                size: 100.0,
                color: Colors.pink,
              ),
              Text(
                "News APP",
                style: TextStyle(
                    fontSize: 20, color: Colors.pink, fontFamily: 'SecularOne'),
              ),
            ],
          )
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

