import 'package:flutter/material.dart';
import 'package:make_team_work/FirstTab.dart';
import 'package:make_team_work/FourthTab.dart';
import 'package:make_team_work/ThirdTab.dart';
import 'SecondTab.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTabIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              FirstTab(),
              SecondTab(selectedTabIndex: selectedTabIndex),
              ThirdTab(),
              FourthTab(
                bucketList: [],
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: TabPageSelector(
                      color: DefaultTabController.of(context)?.index == 1
                          ? Colors.black38
                          : Colors.grey[400],
                      selectedColor:
                          DefaultTabController.of(context)?.index == 1
                              ? Colors.white
                              : Colors.black26,
                      indicatorSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
