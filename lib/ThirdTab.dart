import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FourthTab.dart';

void main() {
  runApp(ThirdTab());
}

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "버킷리스트",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.0,
                  enlargeCenterPage: true,
                ),
                items: [
                  Image.network(
                    'https://cdnimage.ebn.co.kr/news/201412/news_1417395343_723247_main1.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn.topstarnews.net/news/photo/first/201701/img_238253_1.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "기록하세요",
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FourthTab(), // 이동하려는 페이지
                      ),
                    );
                  },
                  child: Text("기록하기"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "하루에 한개씩 쓰기",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1년뒤 꼭 하고싶은거 하기",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "안드로이드 정복하기",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          elevation: 1,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FourthTab(),
              ),
            );
          },
        ),
      ),
    );
  }
}
      // 이동하려는
