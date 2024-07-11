import 'package:flutter/material.dart';

import 'statistics-tab.dart';
import 'history-tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(
              title: Text('Weight Tracker'),
              foregroundColor: Color.fromRGBO(83, 161, 87, 1.0),
              backgroundColor: Color.fromRGBO(19, 48, 20, 1.0),
              bottom: TabBar(
                labelColor: Color.fromRGBO(83, 161, 87, 1.0),
                indicatorColor: Color.fromRGBO(83, 161, 87, 1.0),
                tabs: [
                  Tab(
                    icon: Icon(Icons.auto_graph),
                    text: 'STATISTICS',
                  ),
                  Tab(
                    icon: Icon(Icons.history),
                    text: 'HISTORY',
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [StatisticsTab(), HistoryTab()])),
      ),
    );
  }
}
