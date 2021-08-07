import 'package:flutter/material.dart';
import 'package:fluttergooglesigninapp/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click to Go Second Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
