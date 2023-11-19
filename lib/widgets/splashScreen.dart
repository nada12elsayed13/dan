import 'dart:async';

import 'package:dan/screen/landingScreen.dart';
import 'package:flutter/material.dart';

import '../utils/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Helper.getAssetName("splashIcon.png", "virtual"),
                fit: BoxFit.fill,
              ),
            ),
            Text('Dan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.orange),),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName("Logo.png", "virtual"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
