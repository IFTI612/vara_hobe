import 'package:flutter/material.dart';
import 'package:vara_hobe/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
  super.initState();
  _navigateHome();

  }

  _navigateHome()async{
  await Future.delayed(Duration(milliseconds: 1500),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Vara Hobe",style:
          TextStyle(
            fontSize: 50,
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          ),

          ),

        ),
      );
  }
}
