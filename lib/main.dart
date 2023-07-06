import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Builder(
        builder: (context) {
          DefaultTabController.of(context)?.addListener(
            () {
              setState(() {});
            },
          );
          return Scaffold(
            body: Stack(
              children: [
                TabBarView(
                  children: FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                  FourthTab(),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
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
        },
      ),
    );
  }
}
