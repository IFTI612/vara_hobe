import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vara_hobe/loginC.dart';
import 'package:vara_hobe/reg.dart';
import 'package:vara_hobe/landing_page.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    var c = Get.put(loginC());
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

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 25),
            _inputfield("Email",Get.find<loginC>().email),
            const SizedBox(height: 15),
            _inputfield("Password",Get.find<loginC>().pass,isPassword: true),
            const SizedBox(height: 20),
            _loginBtn(),
            const SizedBox(height: 5),
            _extrText(),

          ],

        ),

      ),
    );

  }
  
  Widget _icon(){
    return Container(
      child: const Icon(Icons.account_balance,
        size: 100,
        color: Colors.brown,

      ),
    );
    
  }

  Widget _inputfield(String hintText,TextEditingController controller,{isPassword = false}){

    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.brown,width: 3)
    );
    return TextField(

      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn(){
    return ElevatedButton(
      onPressed: (){  Navigator.push(context,
        MaterialPageRoute(builder: (context)=>landing()),
      );},
      child: SizedBox(width:100 ,
        child:
        Text("Login ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20 , color: Colors.black87),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }

  Widget _extrText(){

    return TextButton(onPressed: (){

      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>reg()),
      );
    },
      child: Text("Register your account" ,
        style: TextStyle(fontSize: 18,
            color: Colors.black87),

      ),
    );
  }

}


