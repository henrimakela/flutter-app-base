import 'package:flutter/material.dart';

import './Home.dart';
import './SecondPage.dart';
import './ThirdPage.dart';

//export PATH="$PATH:`pwd`/flutter/bin" add flutter to path from terminal
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [HomePage(), SecondPage(), ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter template",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Template for flutter apps"),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.hourglass_empty), title: Text("Page 2")),
            BottomNavigationBarItem(
                icon: Icon(Icons.image), title: Text("Page 3"))
          ],
        ),
      ),
    );
  }
}
