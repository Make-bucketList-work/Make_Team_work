import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';

class FourthTab extends StatefulWidget {
  final List<Bucket> bucketList;

  const FourthTab({Key? key, required this.bucketList}) : super(key: key);

  @override
  State<FourthTab> createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {
  @override
  Widget build(BuildContext context) {
    List<Bucket> complitedBucketList =
        widget.bucketList.where((bucket) => bucket.isDone).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "완료된 버킷리스트",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.network(
              'https://www.shutterstock.com/image-illustration/isometric-3d-illustration-on-blue-600w-1800922156.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: complitedBucketList.isEmpty
                ? Center(
                    child: Text(
                      "완료된 버킷리스트가 없습니다.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 2, 107, 25), // 폰트 크기 조정
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: complitedBucketList.length,
                    itemBuilder: (context, index) {
                      Bucket bucket = complitedBucketList[index];
                      return ListTile(
                        title: Text(
                          bucket.job,
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 2, 107, 25),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class Bucket {
  String job; // 할 일
  bool isDone;
  bool isCompleted;

  Bucket(this.job, this.isDone, {this.isCompleted = false}); // 생성자
}
