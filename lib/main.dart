import 'package:flutter/material.dart';
import 'package:media_booster/Home/Screen/Login/view/creat_screen.dart';
import 'package:media_booster/Home/Screen/Login/view/login_screen.dart';
import 'package:media_booster/Home/Screen/Login/view/signin_Screen.dart';
import 'package:media_booster/Home/Screen/Staggerd/Provider/home_provider.dart';
import 'package:media_booster/Home/Screen/Staggerd/View/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'sigin':(context) => SigninScreen(),
          'login':(context) => CreatScreen(),
          'welcom':(context) => WelcomeScreen(),
        },
      ),
    ),
  );
}