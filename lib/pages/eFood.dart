import 'package:flutter/material.dart';

class eFoodPage extends StatelessWidget {
  // const eFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "eFood",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
