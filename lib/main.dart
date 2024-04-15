import 'package:flutter/material.dart';
import 'package:flutter_basic_2024/pages/food/popular_food_detail.dart';
import 'package:flutter_basic_2024/pages/food/recommened_food_detail.dart';
import 'package:flutter_basic_2024/pages/home/food_page_body.dart';
import 'package:flutter_basic_2024/pages/home/main_home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 228, 228, 81)),
        useMaterial3: true,
      ),
      home: MainHomePage(),
    );
  }
}
