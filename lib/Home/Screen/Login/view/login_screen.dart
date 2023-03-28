import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Positioned(
            top: 100,
            left: -20,
            right: -300,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 10,
            left: -20,
            right: -50,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blue.shade600, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue.shade400, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 450,
            left: 60,
            child: Text(
              "Welcome",
              style: TextStyle(
                fontSize: 70,
                color: Colors.blue.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 45,
            child: Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),gradient: LinearGradient(colors: [
                Colors.blue.shade900,
                Colors.blue,
              ],),),
              child: Text("Login as Maria",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
            ),
          ),
          Positioned(
            top: 300,
            left: 45,
            child: Container(
              height: 120,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/arrow.jpg")),
            ),
          ),
        ],
      )),
    );
  }
}
