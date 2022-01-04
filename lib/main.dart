import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:payment/pages/confirm_page.dart';
import 'package:payment/pages/home_page.dart';
import 'package:payment/pages/payment_page.dart';
import 'package:payment/pages/status_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(
            content: Text('Tap back again to leave'),
          ),
          child: HomePage(),
        ),
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        PaymentPage.id: (context) => PaymentPage(),
        ConfirmPage.id: (context) => ConfirmPage(),
        StatusPage.id: (context) => StatusPage(),
      },
    );
  }
}
