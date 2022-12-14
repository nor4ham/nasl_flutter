// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nasl',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: appRoutes(),
    );
  }
}