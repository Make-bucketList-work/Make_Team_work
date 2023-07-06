import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SecondTab extends StatelessWidget {
  final List<String> imageList = [];
  SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 배경색을 검은색으로 설정
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black), // 내용 영역을 흰색으로 설정
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/gitlogo.png',
                    width: 100,
                    height: 100,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Hi,Github!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'welcome',
                        style: TextStyle(
                            color: Color.fromARGB(255, 165, 164, 164),
                            fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1F2123),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.face_2,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Se Jun',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 245, 247),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.face_3,
                        size: 80,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Seul Bi',
                      style: TextStyle(color: Colors.black87, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 141, 190, 235),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.face_6,
                        size: 80,
                        color: Color.fromARGB(255, 46, 44, 44),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'ji Gyeon',
                      style: TextStyle(color: Colors.black87, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 248, 163),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.face_5,
                        size: 80,
                        color: const Color.fromARGB(255, 61, 45, 45),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Min Woo',
                      style: TextStyle(
                          color: Color.fromARGB(255, 21, 21, 22), fontSize: 30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
