
import 'package:flutter/material.dart';
import 'package:invasion/science/card_economic.dart';
import 'package:invasion/science/card_agriculture.dart';
import 'package:invasion/science/card_wartech.dart';
import 'package:invasion/science/card_science.dart';

import '../constants.dart';
import '../responsive.dart';


class ScienceGridView extends StatelessWidget {
  const ScienceGridView({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {

    final Size _size = MediaQuery.of(context).size;

    return Responsive(
      mobile: InfoCardGridView(
        crossAxisCount: _size.width < 650 ? 2 : 4,
        childAspectRatio: _size.width < 650 ? 1.3 : 1,
      ),
      tablet: InfoCardGridView(),
      desktop: InfoCardGridView(
        childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
      ),
    );
  }
}



class InfoCardGridView extends StatelessWidget {
  const InfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EconomicCard(),
          WartechCard(),
          ScienceCard(),
          AgricultureCard(),
        ]
    );
  }
}
