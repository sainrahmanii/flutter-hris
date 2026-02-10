import 'package:flutter/material.dart';
import 'package:hris/components/atoms/text_body_large.dart';
import 'package:hris/components/atoms/text_heading_1.dart';
import 'package:hris/features/splash/presentation/cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SplashCubit {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash.png'),
            TextHeading1(textHeading1: 'Nafanesia Work'),
            TextBodyLarge(
              textBodyLarge: "Engineering Excellence".toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
