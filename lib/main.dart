import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:koolmind/view/splash-screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kool-Mind',
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      home: const SplashScreen(),
    );
  }
}
