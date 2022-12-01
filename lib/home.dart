import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> onRefresh() async {
  return await Future.delayed(Duration(seconds: 2));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: LiquidPullToRefresh(
        onRefresh: onRefresh,
        height: 300,
        animSpeedFactor: 2,
        backgroundColor: Colors.deepPurple,
        color: Colors.pink,
        borderWidth: 2,
        showChildOpacityTransition: false,
        springAnimationDurationInMilliseconds: 4000,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.pink,
                  height: 280,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.pink,
                  height: 280,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.pink,
                  height: 280,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
