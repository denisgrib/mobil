
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class WartechCard extends StatefulWidget {
  final double _cnt;

  WartechCard(this._cnt);

  @override
  createState() => new WartechCardState(_cnt);
}



class WartechCardState extends State<WartechCard> {
  double cnt;

  WartechCardState(this.cnt);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
            value: this.cnt,
            min: 0,
            max: 100,
            divisions: 100,
            label: this.cnt.round().toString(),
            onChanged: (double value) {
              setState(() {
                this.cnt = value;
              });
            },
          ),
          ProgressLine(
            color: primaryColor,
            percentage: 35,
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
                this.cnt.round().toString(),
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: ,
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}