

import 'package:flutter/material.dart';

PreferredSizeWidget buildFlowAppBar() {
  return
    AppBar(
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
    );
}

