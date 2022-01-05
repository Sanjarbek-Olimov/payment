import 'package:flutter/material.dart';
import 'package:payment/pages/confirm_page.dart';
import 'package:payment/pages/home_page.dart';
import 'package:payment/pages/payment_page.dart';

class StatusPage extends StatefulWidget {
  static const String id = "status_page";


  StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  void popUntilRoot() {
    while (Navigator.of(context).canPop()) {
      Navigator.pop(context, "Success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Status",
          style: const TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.popUntil(context, (route) => route.isFirst);
                  popUntilRoot();
                },
                child: const Text(
                  "Success",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Failure",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
