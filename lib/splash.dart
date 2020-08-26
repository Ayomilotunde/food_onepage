// import 'package:afeez/Intents/main_menu.dart';
import 'package:demo_food/food.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  Future<bool> _splash() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  @override
  void initState() {
    super.initState();
    _splash().then((status) {
      if (status) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Food()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset('image/logo.webp'),
        Shimmer.fromColors(
          baseColor: Colors.red,
          highlightColor: Colors.yellow,
          child: Container(
            margin: EdgeInsets.only(top: 600),
            child: Column(
              children: <Widget>[
                Text(
                  'FOODs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pacifico',
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
