import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/travelData.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

// 生命周期函数，当组件初始化的时候就会触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  List tabs = ['房车旅行', '避暑胜地', '逛古镇', '上海', '重庆', '露营', '滑雪', '树屋', '秋色'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0, //去除阴影
        centerTitle: true, //title 居中
        backgroundColor: Colors.white,
        title: const Text(
          '我的行程',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印路线图标');
                  },
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  icon: const Icon(Icons.route, size: 20, color: Colors.black)),
              const Text(
                '路线',
                style:
                    TextStyle(color: Colors.black, fontSize: 12, height: 0.1),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印更多图标');
                  },
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  icon: const Icon(Icons.more_horiz,
                      size: 20, color: Colors.black)),
              const Text(
                '更多',
                style:
                    TextStyle(color: Colors.black, fontSize: 12, height: 0.1),
              )
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          // Container(
          //   height: 250,
          //   width: 400,
          //   decoration:const BoxDecoration(
          //     // color: Colors.red,
          //     image: DecorationImage(
          //       image:NetworkImage( 'http://124.222.248.97:8008/bj.jpg'),
          //       fit: BoxFit.cover
          //     ),
          //   ),
          // ),
          const travelTop(),
          const travelButton(),

          // const Expanded(child: travelTop()),
          // const Expanded(child: travelButton()),
          SizedBox(
            height: 40,
            width: 400,
            child: (TabBar(
              unselectedLabelColor: Colors.black, //未选中时设置字体颜色
              labelColor: Colors.blue, //选中时设置字体颜色
              isScrollable: true, //多个按钮可以滑动
              controller: _tabController,
              tabs: tabs.map((e) => Tab(text: e)).toList(),
            )),
          ),
          const travelBanner()
          // Expanded(child: travelBanner()),
        ],
      ),
    );
  }
}

// 山川依旧文字
// ignore: camel_case_types
class travelTop extends StatelessWidget {
  const travelTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        children: const [
          Text(
            '山川依旧·开始旅行新体验',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '您没有待出发的行程 可在此计划并管理旅程',
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

//行程界面gridview

class travelButton extends StatelessWidget {
  const travelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印创建旅行线路图标');
                  },
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.satellite_alt_rounded,
                    size: 20,
                    color: Colors.blue,
                  )),
              const Text(
                '创建旅行路线',
                style:
                    TextStyle(color: Colors.black, fontSize: 12, height: 0.1),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印关注航班图标');
                  },
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.airplanemode_active,
                    size: 20,
                    color: Colors.blue,
                  )),
              const Text(
                '关注航班',
                style:
                    TextStyle(color: Colors.black, fontSize: 12, height: 0.1),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印关注火车图标');
                  },
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.train,
                    size: 20,
                    color: Colors.blue,
                  )),
              const Text(
                '关注火车',
                style:
                    TextStyle(color: Colors.black, fontSize: 12, height: 0.1),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//行程景点

class travelBanner extends StatelessWidget {
  const travelBanner({super.key});

  List<Widget> _initGridViewData() {
    var tempList = travelData.map((value) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colors.black)
        ),
        child: Column(
          children: [
            Image.network(value['imageUrl']),
            Text(
              value['title'],
              maxLines: 2, //文字超出部分省略显示
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value['person'],
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      print('打印浏览量');
                    },
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    icon: const Icon(Icons.remove_red_eye,
                        size: 20, color: Colors.black)),
              ],
            )
          ],
        ),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10, //水平Widget之间间距
      mainAxisSpacing: 10, //垂直Widget之间间距
      crossAxisCount: 2, //一行的Widget数量
      shrinkWrap: true, //增加
      childAspectRatio: 0.79, //宽高比
      physics: const NeverScrollableScrollPhysics(), //解决滑动事假冲突
      children: _initGridViewData(),
    );
  }
}


