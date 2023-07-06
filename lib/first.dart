import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromRGBO(245, 207, 218, 1)!,
            const Color.fromRGBO(193, 188, 238, 1)!
          ],
        ),
      ),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      CupertinoIcons.chart_pie,
                      color: Colors.white,
                    ),
                    Text("보기")
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(
                      CupertinoIcons.pencil,
                      color: Colors.white,
                    ),
                    Text("만들기")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "버킷리스트를 만드세요.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      )),
    );
  }
}
