import 'package:flutter/material.dart';

import 'features/HomePage/Presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mahesh Portfolio's",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x00333333)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}