import 'package:flutter/material.dart';
import '../data/homeData.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ['房车旅行', '避暑胜地', '逛古镇', '上海', '重庆', '露营', '滑雪', '树屋', '秋色'];


    //防止刷新处理，保持当前状态
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

// 生命周期函数，当组件初始化的时候就会触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //去除阴影
        // toolbarHeight: 80,
        // leading: IconButton(
        //   icon:const Icon(Icons.menu), onPressed: () {
        //     print('左侧的按钮图标');
        //    },
        // ),
        // backgroundColor: Colors.blue,
        title: Row(
          children: const [
            searchText(),
          ],
        ),
        actions: [
          //右侧图标
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    print('打印设置图标');
                  },
                  padding: const EdgeInsets.all(0),
                  // alignment: AlignmentDirectional.bottomCenter,
                  icon: const Icon(
                    Icons.place_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
              const Text(
                '地图',
                style:
                    TextStyle(color: Colors.white, fontSize: 12, height: 0.1),
              )
            ],
          ),
        ],
        bottom: TabBar(
          isScrollable: true, //多个按钮可以滑动
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: ListView(
        children: [const homeBanner(), const homeCenterList(),homeImages(), const homeBottomList()],
      ),
    );
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
          color: Colors.blue),
      child: const Text(
        "搜索",
        style: TextStyle(color: Colors.white, fontSize: 14),
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
        width: 265,
        height: 38,
        margin: const EdgeInsets.fromLTRB(5, 0, 10, 0),
        child: const TextField(
          cursorColor: Color.fromARGB(255, 102, 102, 102),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(19)),
            ),
            suffixIcon: searchButton(),
          ),
        ));
  }
}

//首页列表
class homeBanner extends StatelessWidget {
  const homeBanner({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 1, //水平Widget之间间距
      mainAxisSpacing: 1, //垂直Widget之间间距
      childAspectRatio: 1, //宽高比
      crossAxisCount: 5, //一行显示的Widget数量
      shrinkWrap: true, //增加
      physics: const NeverScrollableScrollPhysics(), //解决滑动事假冲突
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 235, 89, 4),
                Color.fromARGB(255, 245, 142, 82),
              ],
            ),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印机票图标');
                },
                icon: const Icon(Icons.house_sharp,
                    size: 34, color: Colors.white)),
            const Text(
              '机票',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 64, 138, 248),
                Color.fromARGB(255, 3, 178, 231),
              ],
            ),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印机票图标');
                },
                icon: const Icon(Icons.airplanemode_active_outlined,
                    size: 34, color: Colors.white)),
            const Text(
              '机票',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 190, 104, 248),
                Color.fromARGB(255, 253, 150, 253),
              ],
            ),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印火车票图标');
                },
                icon: const Icon(Icons.train_outlined,
                    size: 34, color: Colors.white)),
            const Text(
              '火车',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 2, 190, 118),
                Color.fromARGB(255, 106, 250, 171),
              ],
            ),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印机票图标');
                },
                icon: const Icon(Icons.bed_outlined,
                    size: 34, color: Colors.white)),
            const Text(
              '酒店',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 235, 157, 54),
                Color.fromARGB(255, 248, 191, 85),
              ],
            ),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印景点图标');
                },
                icon: const Icon(Icons.note_alt_rounded,
                    size: 34, color: Colors.white)),
            const Text(
              '攻略/景点',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 164, 107),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印民宿图标');
                },
                icon: const Icon(Icons.house_siding,
                    size: 34, color: Colors.white)),
            const Text(
              '民宿/客栈',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 137, 176, 248),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印汽车图标');
                },
                icon:
                    const Icon(Icons.car_crash, size: 34, color: Colors.white)),
            const Text(
              '汽车/船票',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 220, 107, 248),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印门票图标');
                },
                icon: const Icon(Icons.assignment_turned_in_sharp,
                    size: 34, color: Colors.white)),
            const Text(
              '门票/活动',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 127, 248, 198),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印美食图标');
                },
                icon: const Icon(Icons.shopify, size: 34, color: Colors.white)),
            const Text(
              '美食/购物',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 164, 107),
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  print('打印借钱图标');
                },
                icon: const Icon(Icons.monitor_heart,
                    size: 34, color: Colors.white)),
            const Text(
              '借钱/分期',
              maxLines: 2, //文字超出部分省略显示
              style: TextStyle(
                fontSize: 12,
                // height: 0.1,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

//特价专区
class homeCenterList extends StatelessWidget {
  const homeCenterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 140,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: GridView.count(
        physics:const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        crossAxisCount: 2,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 145,
                margin: const EdgeInsets.all(2),
                // color: Colors.red,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      '星期三特价',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    Image.network(
                        'https://dimg04.c-ctrip.com/images/20060k000000b971iEA9A_D_200_200.jpg'),
                    const Text(
                      '热卖酒店套餐',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 145,
                margin: const EdgeInsets.all(2),
                // color: Colors.red,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      '星期三直播',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    Image.network(
                        'https://dimg04.c-ctrip.com/images/fd/hotel/g4/M00/F9/A9/CggYHlXcCJSAKgK2AAH5VEOaf7Q830_D_200_200.jpg'),
                    const Text(
                      'BOOS爆款',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 145,
                margin: const EdgeInsets.all(2),
                // color: Colors.red,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      '口碑榜',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    Image.network(
                        'https://dimg04.c-ctrip.com/images/0205f120008e5up8k4589_D_200_200.jpg'),
                    const Text(
                      '滑雪景点榜',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 145,
                margin: const EdgeInsets.all(2),
                // color: Colors.red,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      '旗舰店',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                    Image.network(
                        'https://dimg04.c-ctrip.com/images/020131200058yahjnB44C_D_200_200.jpg'),
                    const Text(
                      '加州梦',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//轮播图

class homeImages extends StatelessWidget {
homeImages({super.key});
  List _imageUrls =[
    'https://dimg04.c-ctrip.com/images/0zg1t12000a62mpu52521.jpg',
    'https://dimg04.c-ctrip.com/images/0zg4g12000a3ckvboBEE3.jpg',
    'https://dimg04.c-ctrip.com/images/0zg3712000a3k0vrrEFDA.jpg',
    'https://dimg04.c-ctrip.com/images/0zg4g12000a3ckvboBEE3.jpg',
    'https://dimg04.c-ctrip.com/images/0zg3p12000a62h4ynBF6C.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      height: 100,
      //轮播图插件
      child: Swiper(
        //轮播图数量
        itemCount: _imageUrls.length,
        //设置轮播图自动播放
        autoplay: true,
        // 轮播条目组件
        itemBuilder: (BuildContext context,int index){
          return Image.network(
            //图片URL链接
            _imageUrls[index],
            //缩放方式
            fit: BoxFit.fill,
          );
        },

        //轮播图指示器
        pagination: const SwiperPagination(),
      ),

      //
    );
  }
}

//底部浏览页
class homeBottomList extends StatelessWidget {
  const homeBottomList({super.key});

  List<Widget> _initGridViewData() {
    var tempList = homeData.map((value) {
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
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      crossAxisSpacing: 10, //水平Widget之间间距
      mainAxisSpacing: 10, //垂直Widget之间间距
      childAspectRatio: 0.92, //宽高比
      crossAxisCount: 2, //一行显示的Widget数量
      shrinkWrap: true, //增加
      physics: const NeverScrollableScrollPhysics(), //解决滑动事假冲突
      children: _initGridViewData(),
    );
  }
}
