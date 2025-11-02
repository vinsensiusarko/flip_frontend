import 'package:flip_frontend/style/app_style.dart';
import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: kOrangeTomato,
          strokeWidth: 4,
        ),
      ),
    );
  }
}
