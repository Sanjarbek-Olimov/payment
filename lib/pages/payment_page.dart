import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

import 'confirm_page.dart';

class PaymentPage extends StatefulWidget {
  static const String id = "payment_page";

  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  Future<void> secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    super.initState();
    secureScreen();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
  }

  void _openConfirm() async{

    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    var result = await Navigator.of(context).pushNamed(ConfirmPage.id);
    if(result != null && result == "Success") {
      print("Payment Page: "+ result.toString());
      Navigator.pop(context, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openConfirm,
          child: const Text(
            "Go to Confirmation Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
