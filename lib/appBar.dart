

import 'package:flutter/material.dart';

PreferredSizeWidget buildFlowAppBar() {
  return
    // leading: IconButton(
    //   onPressed: null, //_onExitPressed,
    //   icon: const Icon(Icons.chevron_left),
    // ),
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
// Padding(
//   padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
//   child: IconButton(
//     icon: Icon(
//       state.viewType == PlaceTrackerViewType.map
//           ? Icons.list
//           : Icons.map,
//       size: 32.0,
//     ),
//     onPressed: () {
//       state.setViewType(
//         state.viewType == PlaceTrackerViewType.map
//             ? PlaceTrackerViewType.list
//             : PlaceTrackerViewType.map,
//       );
//     },
//   ),
// ),
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

