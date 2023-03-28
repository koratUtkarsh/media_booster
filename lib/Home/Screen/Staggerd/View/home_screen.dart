import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:media_booster/Home/Screen/Staggerd/Provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderfalse, homeProvidertrue;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Staggered"),
        ),
        body: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 5,
              pattern: [
                WovenGridTile(1),
                WovenGridTile(
                  4.5 / 7,
                  crossAxisRatio: 0.9,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: homeProviderfalse!.img.length,
              (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(width: 45, color: Colors.white),
                      left: BorderSide(width: 10, color: Colors.white),
                      right: BorderSide(width: 10, color: Colors.white),
                      top: BorderSide(width: 10, color: Colors.white),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "${homeProviderfalse!.img[index]}",
                        fit: BoxFit.cover,
                      ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //     child: Container(child: Text("${homeProviderfalse!.der[index]}")))
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
