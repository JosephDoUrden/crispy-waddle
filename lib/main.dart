import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learn_ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.black38,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      )),
      home: const LoginPage(),
    );
  }
}
