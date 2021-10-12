
import 'package:flutter/material.dart';
import 'package:invasion/science/science_info_cart.dart';

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
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: [
        CloudStorageInfo(
          title: "Documents",
          numOfFiles: 1328,
          svgSrc: "assets/icons/Documents.svg",
          totalStorage: "1.9GB",
          color: primaryColor,
          percentage: 35,
        ),
        CloudStorageInfo(
          title: "Google Drive",
          numOfFiles: 1328,
          svgSrc: "assets/icons/google_drive.svg",
          totalStorage: "2.9GB",
          color: Color(0xFFFFA113),
          percentage: 35,
        ),
        CloudStorageInfo(
          title: "One Drive",
          numOfFiles: 1328,
          svgSrc: "assets/icons/one_drive.svg",
          totalStorage: "1GB",
          color: Color(0xFFA4CDFF),
          percentage: 10,
        ),
        CloudStorageInfo(
          title: "Documents",
          numOfFiles: 5328,
          svgSrc: "assets/icons/drop_box.svg",
          totalStorage: "7.3GB",
          color: Color(0xFF007EE5),
          percentage: 78,
        )
        ]
    );
  }
}
