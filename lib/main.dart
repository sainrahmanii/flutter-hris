import 'package:flutter/material.dart';
import 'package:hris/core/themes/themes.dart';
import 'package:hris/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.darkTheme,
      routerConfig: Routes.routerConfig,
    );
  }
}
