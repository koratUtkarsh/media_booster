import 'package:flutter/material.dart';
import 'package:media_booster/utils/shared.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  
  TextEditingController  txtuseremail = TextEditingController();
  TextEditingController  txtuserpassword = TextEditingController();
  
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
                SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 20),
                  child: TextField(

                    controller: txtuseremail,
                    decoration: InputDecoration(hintText: "Username",suffixIcon: Icon(Icons.person,color: Colors.blue,)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40,left: 40),
                  child: TextField(
                    controller: txtuserpassword,
                    decoration: InputDecoration(hintText: "Password",suffixIcon: Icon(Icons.lock,color: Colors.blue,)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: InkWell(
                    onTap: () async {
                      String useremail = txtuseremail.text;
                      String userpassword = txtuserpassword.text;
                      Shr shr = Shr();
                      Map m1 = await shr.readShr();
                      
                      if(userpassword == m1['p1'] && useremail == m1['e1']){
                        Navigator.pushNamed(context, 'welcom');
                      }
                      else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Id or Password"),),);
                        }
                      print(useremail);
                      print(userpassword);
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),gradient: LinearGradient(colors: [
                        Colors.blue.shade900,
                        Colors.blue,
                      ],),),
                      child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10,left: 40,right: 40,top: 90),
                  child: TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  }, child: Text("Don't have account? Sign up"),),
                ),
              ],
            ),
          ),),
    );
  }
}
