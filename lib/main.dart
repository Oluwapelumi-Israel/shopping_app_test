import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'views/home.dart';


void main() => runApp(
  MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      title: 'Wallet',
      theme: ThemeData.light().copyWith(),
      home: Home(),
    );
  }
}

