import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

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
  double cnt = 0;


  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                child: Icon(Icons.pin_drop, size: 24.0),
              ),
              Text('Place Tracker'+ cnt.toInt().toString()),
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
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // AgricultureCard(),
                  // EconomicCard(),
                  Container(
                    height: heightBlock,
                    padding: EdgeInsets.all(defaultPadding),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      // borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(defaultPadding * 0.75),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/Documents.svg",
                                color: primaryColor,
                              ),
                            ),
                            Icon(Icons.more_vert, color: Colors.white54)
                          ],
                        ),
                        Text(
                          "Wartech",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Slider(
                          value: cnt,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          label: cnt.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              cnt = value;
                            });
                          },
                        ),
                        Stack(
                          // fit: ,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 5,
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) => Container(
                                width: constraints.maxWidth * (35 / 100),
                                height: 5,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${1328} Files",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.white70),
                            ),
                            Text(
                              cnt.round().toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // ScienceCard(),
                ]),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
