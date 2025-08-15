import 'package:flutter/material.dart';
import 'package:kkls_assessment/configs/screen_config.dart';
import 'package:kkls_assessment/views/shared/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      ScreenConfig.init(context);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NavScreen(),
    
    );
  }
}
