import 'package:flutter/material.dart';
import 'package:fluttergooglesigninapp/third_page.dart';

import 'main.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int navIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
      ),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          },
          child: Text('Click to Go Third Page'),
        ),
      ),
    );
  }
}
