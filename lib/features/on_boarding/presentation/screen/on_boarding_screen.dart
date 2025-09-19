import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/features/on_boarding/presentation/widgets/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingScreenBody());
  }
}
