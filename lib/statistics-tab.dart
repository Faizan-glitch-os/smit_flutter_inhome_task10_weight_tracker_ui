import 'package:flutter/material.dart';

import 'stastics-data-widget.dart';

class StatisticsTab extends StatelessWidget {
  const StatisticsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        StatisticsDataWidget(
          containerWidth: deviceWidth,
          containerHeight: deviceHeight * 0.23,
          containerText: 'Current weight',
          number: 57.0,
        ),
        StatisticsDataWidget(
          containerWidth: deviceWidth,
          containerHeight: deviceHeight * 0.23,
          containerText: 'Progress done',
          number: -3.0,
        ),
        Row(
          children: [
            Expanded(
              child: StatisticsDataWidget(
                containerWidth: deviceWidth * .50,
                containerHeight: deviceHeight * 0.23,
                containerText: 'Last week',
                number: -3.0,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: StatisticsDataWidget(
                containerWidth: deviceWidth * .50,
                containerHeight: deviceHeight * 0.23,
                containerText: 'Last month',
                number: -3.0,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: const Color.fromRGBO(19, 48, 20, 1.0),
              foregroundColor: const Color.fromRGBO(83, 161, 87, 1.0),
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
