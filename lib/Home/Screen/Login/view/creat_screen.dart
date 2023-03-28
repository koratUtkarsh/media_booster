import 'package:flutter/material.dart';
import 'package:media_booster/utils/shared.dart';

class CreatScreen extends StatefulWidget {
  const CreatScreen({Key? key}) : super(key: key);

  @override
  State<CreatScreen> createState() => _CreatScreenState();
}

class _CreatScreenState extends State<CreatScreen> {

  TextEditingController  txtemail = TextEditingController();
  TextEditingController  txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Positioned(
                      top: -200,
                      right: -50,
                      child: Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade300, shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: -250,
                      left: -90,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade500, shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: -220,
                      left: -100,
                      child: Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700, shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 140,
                      child: Container(
                        height: 150,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(shape: BoxShape.circle,),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("assets/images/arrow.jpg")),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 300,
                left: 60,
                child: Text(
                  "Create",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: 60,
                child: Text(
                  "account",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 40,right: 40,bottom: 20),
                child: TextField(
                  controller: txtemail,
                  decoration: InputDecoration(hintText: "E-mail",suffixIcon: Icon(Icons.email_outlined,color: Colors.blue,)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40,left: 40),
                child: TextField(
                  controller: txtpassword,
                  decoration: InputDecoration(hintText: "Password",suffixIcon: Icon(Icons.lock,color: Colors.blue,)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: InkWell(
                  onTap: () {
                    String email = txtemail.text;
                    String password = txtpassword.text;
                    Shr shr = Shr();
                    shr.createshr(email,password);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),gradient: LinearGradient(colors: [
                      Colors.blue.shade900,
                      Colors.blue,
                    ],),),
                    child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 40,right: 40,top: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Already have account? Sign in",),
                ),
              ),
            ],
          ),
        ),),
    );
  }
}
