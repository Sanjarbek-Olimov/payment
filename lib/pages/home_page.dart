import 'package:flutter/material.dart';
import 'package:payment/pages/payment_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  void _openPayment(){
    Navigator.of(context).pushNamed(PaymentPage.id);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(fontSize: 25),),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openPayment,
          child: const Text("Go to Payment Page", style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
