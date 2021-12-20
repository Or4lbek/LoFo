import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lofo_app/widgets/login/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../intro_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  initState(){
    // TODO: implement initState
    super.initState();

    // final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    // final session = prefs.getInt("time");
    // if(session == null){
    //   setState(() {
    //     prefs.setInt('time', 1);
    //   });
      Timer(const Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const IntroSliderPage()));
      });
    // }
    // else{
    //   Timer(const Duration(seconds: 3),(){
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SigninWidget()));
    //   });
    // }

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SpinKitDoubleBounce(color: Colors.white,
        size: 80,),
      ),
    );
  }
}
