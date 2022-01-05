import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:payment/pages/status_page.dart';

class ConfirmPage extends StatefulWidget {
  static const String id = "confirm_page";
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  void _openStatus() async {
    var result = await Navigator.of(context).pushNamed(StatusPage.id);
    if(result != null && result == "Success"){
      print("Confirm Page: "+ result.toString());
      Navigator.pop(context, result);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmation", style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openStatus,
          child: const Text("Confirm", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
