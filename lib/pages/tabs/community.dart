import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ['发现', '城市', '福利', '热门', '影视', '潮玩', '旅人', '玩乐', '酒店', '美食'];

  // 生命周期函数，当组件初始化的时候就会触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('关注', style: TextStyle(color: Colors.black, fontSize: 20)),
            Text('广场', style: TextStyle(color: Colors.black, fontSize: 20)),
            Text('小组', style: TextStyle(color: Colors.black, fontSize: 20))
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.card_giftcard, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, color: Colors.black),
          )
        ],
        bottom: TabBar(
          unselectedLabelColor: Colors.black, //未选中时设置字体颜色
          labelColor: Colors.blue, //选中时设置字体颜色
          isScrollable: true, //多个按钮可以滑动
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: ListView(
        children: [
          const hotTopic(),
          commentList(),
        ],
      ),
    );
  }
}

//社区热门话题
class hotTopic extends StatelessWidget {
  const hotTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 247, 250, 241),
      ),
      child: (Column(
        children: [
          Container(
            height: 30,
            // color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '热门话题',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '话题广场>',
                  style:
                      TextStyle(fontSize: 10, color: Colors.grey, height: 0.1),
                ),
              ],
            ),
          ),
          Container(
            // width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印浏览量');
                          },
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: const Icon(Icons.remove_red_eye,
                              size: 20, color: Colors.black)),
                      const Text(
                        '徒步看秋天',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '25.64w次围观',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印浏览量');
                          },
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: const Icon(Icons.remove_red_eye,
                              size: 20, color: Colors.black)),
                      const Text(
                        '不出远门的小众景点',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '6.12w次围观',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印浏览量');
                          },
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: const Icon(Icons.remove_red_eye,
                              size: 20, color: Colors.black)),
                      const Text(
                        '徒步看秋天',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '25.64w次围观',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

//评论
class commentList extends StatelessWidget {
  commentList({super.key});
  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 400,
            height: 330,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 242, 243, 239),
            ),
            child: Column(
              children: [
                Container(
                  // width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://dimg04.c-ctrip.com/images/0AS1k120009l60yh36D69.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              margin: const EdgeInsets.all(2),
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    '梦之旅行者',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2022-11-16',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      NewActivityButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '赤水丹霞旅游区，大瀑布',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '这里地处云贵高原向四川盆地的过渡，',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg03.c-ctrip.com/images/100o0p000000fz2b8C354_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg01.c-ctrip.com/images/100r0p000000fyn8o4FDE_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg05.c-ctrip.com/images/01045120008c4wzvk6467_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              )))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          width: 210,
                          height: 38,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextField(
                            controller: _textEditingController,
                            cursorColor:
                                const Color.fromARGB(255, 102, 102, 102),
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                              ),
                            ),
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt,
                            color: Colors.black, size: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message,
                            color: Colors.black, size: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            height: 330,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 242, 243, 239),
            ),
            child: Column(
              children: [
                Container(
                  // width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://dimg04.c-ctrip.com/images/0AS1k120009l60yh36D69.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              margin: const EdgeInsets.all(2),
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    '梦之旅行者',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2022-11-16',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      NewActivityButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '赤水丹霞旅游区，大瀑布',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '这里地处云贵高原向四川盆地的过渡，',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg03.c-ctrip.com/images/100o0p000000fz2b8C354_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg01.c-ctrip.com/images/100r0p000000fyn8o4FDE_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg05.c-ctrip.com/images/01045120008c4wzvk6467_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              )))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          width: 210,
                          height: 38,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextField(
                            controller: _textEditingController,
                            cursorColor:
                                const Color.fromARGB(255, 102, 102, 102),
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                              ),
                            ),
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt,
                            color: Colors.black, size: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message,
                            color: Colors.black, size: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            height: 330,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 242, 243, 239),
            ),
            child: Column(
              children: [
                Container(
                  // width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://dimg04.c-ctrip.com/images/0AS1k120009l60yh36D69.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              margin: const EdgeInsets.all(2),
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    '梦之旅行者',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2022-11-16',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      NewActivityButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '赤水丹霞旅游区，大瀑布',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '这里地处云贵高原向四川盆地的过渡，',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg03.c-ctrip.com/images/100o0p000000fz2b8C354_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg01.c-ctrip.com/images/100r0p000000fyn8o4FDE_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg05.c-ctrip.com/images/01045120008c4wzvk6467_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              )))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          width: 210,
                          height: 38,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextField(
                            controller: _textEditingController,
                            cursorColor:
                                const Color.fromARGB(255, 102, 102, 102),
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                              ),
                            ),
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt,
                            color: Colors.black, size: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message,
                            color: Colors.black, size: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            height: 330,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 242, 243, 239),
            ),
            child: Column(
              children: [
                Container(
                  // width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(75),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://dimg04.c-ctrip.com/images/0AS1k120009l60yh36D69.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              margin: const EdgeInsets.all(2),
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    '梦之旅行者',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2022-11-16',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      NewActivityButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '赤水丹霞旅游区，大瀑布',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '中国第二大瀑布竟藏在这里',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '这里地处云贵高原向四川盆地的过渡，',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg03.c-ctrip.com/images/100o0p000000fz2b8C354_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg01.c-ctrip.com/images/100r0p000000fyn8o4FDE_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://dimg05.c-ctrip.com/images/01045120008c4wzvk6467_D_256_180.jpg'),
                                fit: BoxFit.cover,
                              )))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          width: 210,
                          height: 38,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextField(
                            controller: _textEditingController,
                            cursorColor:
                                const Color.fromARGB(255, 102, 102, 102),
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                              ),
                            ),
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt,
                            color: Colors.black, size: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message,
                            color: Colors.black, size: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

//按钮组件

class NewActivityButton extends StatelessWidget {
  final GestureTapCallback onPressed; //点击事件的回调，一旦设置后就不可变

  NewActivityButton({required this.onPressed});

  ///sizeBox增加图片和文字的间距
  ///RawMaterialButton -> Row -> Icon & SizeBox & Text
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.black,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.add, color: Colors.white),
          SizedBox(
            width: 10,
          ),
          Text(
            "关注",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      shape: StadiumBorder(),
      onPressed: onPressed,
    );
  }
}
