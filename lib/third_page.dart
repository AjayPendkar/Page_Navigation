import 'package:flutter/material.dart';
import 'package:fluttergooglesigninapp/first_page.dart';

import 'main.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int navIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Third Page"),
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
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Text('Click to Go First Page!'),
        ),
      ),
    );
  }
}
