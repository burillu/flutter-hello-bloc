import 'package:flutter/material.dart';
import 'package:hello_bloc/pages/cart_page.dart';
import 'package:hello_bloc/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      initialRoute: "/",
      routes: {
        "/": (_) => HomePage(),
        "/cart": (_) => CartPage(),
      },
    );
  }
}
