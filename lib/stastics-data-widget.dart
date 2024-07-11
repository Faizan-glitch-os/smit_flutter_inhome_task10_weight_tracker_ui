import 'package:flutter/material.dart';

class StatisticsDataWidget extends StatelessWidget {
  StatisticsDataWidget(
      {super.key,
      required this.containerWidth,
      required this.containerHeight,
      required this.containerText,
      required this.number});

  final double containerWidth;
  final double containerHeight;
  final String containerText;
  final double number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white24,
        border: const Border(
          bottom: BorderSide(color: Colors.black54, width: 2),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: number.toString(),
                  style: const TextStyle(
                      fontSize: 50,
                      color: Color.fromRGBO(13, 67, 16, 1.0),
                      shadows: [
                        Shadow(
                          color: Color.fromRGBO(13, 67, 16, 1.0),
                          offset: Offset(3, 3),
                          blurRadius: 10,
                        )
                      ]),
                ),
                const TextSpan(
                    text: 'kg',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          const Spacer(),
          Text(
            containerText,
            style: const TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
