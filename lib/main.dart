import 'package:flutter/material.dart';
import 'pages/tabs/community.dart';
import 'pages/tabs/home.dart';
import 'pages/tabs/travel.dart';
import 'pages/tabs/person.dart';
import 'pages/tabs/message.dart';
import './tripFont.dart';
import 'pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug
      title: '携程',
      home: HomeNavigationPage(0),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

// ignore: must_be_immutable
class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex, {super.key});
  int currentIndex;

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final screens = [
    const HomePage(),
    const CommunityPage(),
    const MessagePage(),
    const TravelPage(),
    const PersonPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: widget.currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true, //展示图标文字
          selectedItemColor: const Color.fromARGB(255, 0, 122, 255), //更改图标颜色
          currentIndex: widget.currentIndex, //当前索引
          onTap: (index) => setState(() {
            widget.currentIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_repair_service), label: "社区"),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_comment), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.ballot), label: "行程"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
          ],
        ));
  }
}

// 搜索按钮
class searchButton extends StatelessWidget {
  const searchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 209, 2, .9)),
      child: const Text(
        '搜索',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.yellow, fontSize: 14, backgroundColor: Colors.red),
      ),
    );
  }
}

// 搜索框
class searchText extends StatelessWidget {
  const searchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(19)),
        width: 10,
        height: 38,
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: const TextField(
          cursorColor: Color.fromARGB(255, 102, 102, 102),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(19)),
            ),
            suffixIcon: searchButton(), //嵌入搜索按钮
          ),
        ));
  }
}

// 旅游地图
class ScanIcon extends StatelessWidget {
  const ScanIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: Image.asset("images/22.png"),
    );
  }
}
