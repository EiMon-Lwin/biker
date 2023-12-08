import 'package:flutter/material.dart';

class CheckInLoading extends StatelessWidget {
  const CheckInLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
