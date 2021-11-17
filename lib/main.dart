
import 'package:flutter/material.dart';
import 'package:invasion/science/science.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Admin Panel',
    theme: ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],

      // Define the default font family.
      fontFamily: "Times New Roman",

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0),
      ),
    ),
    home: new Game(),
  ));
}

class Game extends StatefulWidget {
  @override
  createState() => new GameState();
}

class GameState extends State<Game> {
  // final _formKey = GlobalKey<FormState>();
  static double cnt = 0;

  @override
  void initState() {
    cnt = 0;
    super.initState();
  }

  void _setCnt(double val) {
    cnt = val;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                child: Icon(Icons.pin_drop, size: 24.0),
              ),
              Text('Place Tracker'),
            ],
          ),
          backgroundColor: Colors.green[700],
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press Next Day()
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info_sharp)),
              Tab(icon: Icon(Icons.bar_chart)),
              Tab(icon: Icon(Icons.account_balance)),
              Tab(icon: Icon(Icons.map_outlined)),
              Tab(icon: Icon(Icons.account_box)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_boat),
            ScienceGridView(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

