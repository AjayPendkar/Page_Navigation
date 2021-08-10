import 'package:flutter/material.dart';
import 'package:fluttergooglesigninapp/second_page.dart';
import 'package:fluttergooglesigninapp/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 1',
      theme: ThemeData(
        //
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        centerTitle: true,
      ),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      body: Builder(
        // ignore: missing_return
        builder: (context) {
          switch (navIndex) {
            case 0:
              return Center(
                child: ElevatedButton(
                  child: Text('Click to Go Second Page'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                ),
              );
            case 1:
              return Center(
                child: ElevatedButton(
                  child: Text('Click to Go Second Page'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                ),
              );
            case 2:
              return Center(
                child: ElevatedButton(
                  child: Text('Click to Go Second Page'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  },
                ),
              );
          }
        },
      ),
    );
  }
}

class Sidenav extends StatelessWidget {
  final Function setIndex;
  final int selectedIndex;

  Sidenav(this.selectedIndex, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('PAGE NAVIGATION',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 21)),
          ),
          Divider(color: Colors.grey.shade400),
          _navItem(context, Icons.inbox, 'PAGE 1', onTap: () {
            _navItemClicked(context, 0);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          }, selected: selectedIndex == 0),
          _navItem(context, Icons.group, 'PAGE 2', onTap: () {
            _navItemClicked(context, 1);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          }, selected: selectedIndex == 1),
          _navItem(context, Icons.local_offer, 'PAGE 3', onTap: () {
            _navItemClicked(context, 2);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          }, selected: selectedIndex == 2),
        ],
      ),
    );
  }

  _navItem(BuildContext context, IconData icon, String text,
          {Text suffix, Function onTap, bool selected = false}) =>
      Container(
        color: selected ? Colors.grey.shade300 : Colors.transparent,
        child: ListTile(
          leading: Icon(icon,
              color: selected ? Theme.of(context).primaryColor : Colors.black),
          trailing: suffix,
          title: Text(text),
          selected: selected,
          onTap: onTap,
        ),
      );

  _navItemClicked(BuildContext context, int index) {
    setIndex(index);
    Navigator.of(context).pop();
  }
}
