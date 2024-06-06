import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vara_hobe/login.dart';
import 'package:vara_hobe/regC.dart';

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}


class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    var d = Get.put(regC());
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
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             _icon(),
            const SizedBox(height: 15),
            _inputfield("User Name",Get.find<regC>().UserName),
            const SizedBox(height: 10),
            _inputfield("Email",Get.find<regC>().email),
            const SizedBox(height: 10),
            _inputfield("NID",Get.find<regC>().nid),
            const SizedBox(height: 10),
            _inputfield("Password",Get.find<regC>().pass,isPassword: true),
            const SizedBox(height: 10),
            _regBtn(),
            const SizedBox(height: 5),
            _back_to_login(),

          ],

        ),

      ),
    );
  }

  Widget _icon(){
    return Container(
      child: Icon(Icons.account_circle,size: 70,color :Colors.brown),

    );

  }


  Widget _inputfield(String hintText,TextEditingController controller,{isPassword = false}){

    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.brown,width: 1)
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

  Widget _regBtn(){

    return ElevatedButton(onPressed: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>login()),
      );
    },
      child:SizedBox(width: 100,
        child: Text("Sign In",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18 , color: Colors.blueGrey),
        ),
      ),

      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: Colors.white70,
      ),

    );

  }

  Widget _back_to_login() {

    return TextButton(onPressed: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>login()),
      );
    },

      child:Text("Already registered?",
        style: TextStyle(fontSize: 18 , color: Colors.amber),
      ),

    );

  }

}