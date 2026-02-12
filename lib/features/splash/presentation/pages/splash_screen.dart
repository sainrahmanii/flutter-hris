import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
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
            AtomText.h1('Nafanesia Work', TextAlign.center),
            AtomText.bodyLarge('ENGINEERING EXCELLENCE', TextAlign.center),
          ],
        ),
      ),
    );
  }
}
