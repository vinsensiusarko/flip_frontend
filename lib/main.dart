import 'package:flip_frontend/constant/app_constant.dart';
import 'package:flip_frontend/route/routes.dart';
import 'package:flip_frontend/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[200],
    ));
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        bottomAppBarTheme: const BottomAppBarTheme(
          shadowColor: Colors.black,
          elevation: 1
        )
      ),
      home: const SplashScreen(),
      onGenerateRoute: routes,
    );
  }
}
