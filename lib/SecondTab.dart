import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:make_team_work/FirstTab.dart';
import 'package:make_team_work/FourthTab.dart';
import 'package:make_team_work/ThirdTab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondTab extends StatelessWidget {
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MySelf(),
                          ),
                        );
                      },
                      child: Text(
                        'Se Jun',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -20),
                child: Container(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstTab(),
                            ),
                          );
                        },
                        child: Text(
                          'Seul Bi',
                          style: TextStyle(color: Colors.black87, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -40),
                child: Container(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FourthTab(
                                bucketList: [],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'ji Gyeon',
                          style: TextStyle(color: Colors.black87, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -60),
                child: Container(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdTab(),
                            ),
                          );
                        },
                        child: Text(
                          'Min Woo',
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 21, 22),
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySelf extends StatefulWidget {
  MySelf({Key? key}) : super(key: key);

  @override
  State<MySelf> createState() => _MySelfState();
}

class _MySelfState extends State<MySelf> {
  final name = 'Park Se jun';
  var age = 29;
  bool isLiked = false;

  TextEditingController inputData = TextEditingController();
  List<bool> isHeart = [];
  List<String> BucketList = [];

  addBucketList(a) {
    setState(() {
      BucketList.add(a);
      isHeart.add(false);
    });
  }

  removeBucketList(a) {
    setState(() {
      BucketList.remove(a);
    });
  }

  sortList() {
    List<String> sortedList = [];
    List<bool> sortedHearts = [];

    for (int i = 0; i < BucketList.length; i++) {
      if (isHeart[i]) {
        sortedList.insert(0, BucketList[i]);
        sortedHearts.insert(0, true);
      } else {
        sortedList.add(BucketList[i]);
        sortedHearts.add(false);
      }
    }

    setState(() {
      BucketList = sortedList;
      isHeart = sortedHearts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/cat.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 90),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(age.toString()),
                    ],
                  ),
                  SizedBox(width: 60),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon: isLiked
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border_outlined),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 50),
              Text(
                'Bucket List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Add Bucket List'),
                          content: TextField(
                            controller: inputData,
                            decoration: InputDecoration(hintText: 'bucket'),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  addBucketList(inputData.text);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'add',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'cancle',
                                  style: TextStyle(color: Colors.black45),
                                )),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.arrow_drop_down))
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: BucketList.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(BucketList[index]),
                leading: IconButton(
                    onPressed: () {
                      setState(() {
                        isHeart[index] = !isHeart[index];
                        sortList();
                      });
                    },
                    icon: isHeart[index]
                        ? Icon(
                            Icons.favorite,
                            color: Colors.orange.shade700,
                          )
                        : Icon(Icons.favorite_border)),
                trailing: TextButton(
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.brown),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            '삭제확인',
                            style: TextStyle(color: Colors.black87),
                          ),
                          content: Text(
                            'really?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    removeBucketList(BucketList[index]);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text(
                                  'delete',
                                  style: TextStyle(color: Colors.black87),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'cancle',
                                  style: TextStyle(color: Colors.black45),
                                ))
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
