import 'package:flutter/material.dart';

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
