import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vara_hobe/loginC.dart';
import 'package:vara_hobe/reg.dart';

class landing extends StatefulWidget {
  const landing({super.key});

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.cyanAccent,
              Colors.limeAccent,
            ]

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //_icon(),
            const SizedBox(height: 25),
            //_inputfield("Email",Get.find<loginC>().email),
            const SizedBox(height: 15),
            //_inputfield("Password",Get.find<loginC>().pass,isPassword: true),
            const SizedBox(height: 20),
            //_loginBtn(),
            const SizedBox(height: 5),
            //_extrText(),

          ],

        ),

      ),
    );
  }
}
