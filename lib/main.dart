import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(15),
        width: _width,
        height: _height,
        color: Colors.purple[300],
        child: Column(
          children: [
            // appbar section strat
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    backgroundImage: AssetImage("assets/avt.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Hi , Daniyel",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
                //add to card HOME work
                )
          ],
        ),
      )),
    );
  }
}
