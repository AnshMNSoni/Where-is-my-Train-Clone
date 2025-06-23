import 'package:flutter/material.dart';

class PNRPage extends StatelessWidget {
  const PNRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_left), title: Text("PNR")),
    );
  }
}
