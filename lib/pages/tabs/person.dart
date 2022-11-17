import 'package:flutter/material.dart';
import '../data/cardData.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0, //去除阴影
        centerTitle: true, //title 居中
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                print('打印签到图标');
              },
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: const Icon(Icons.note_alt_outlined,
                  size: 20, color: Colors.black)),
          IconButton(
              onPressed: () {
                print('打印签到图标');
              },
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: const Icon(Icons.person_add_alt,
                  size: 20, color: Colors.black)),
          IconButton(
              onPressed: () {
                print('打印签到图标');
              },
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: const Icon(Icons.settings, size: 20, color: Colors.black)),
          IconButton(
              onPressed: () {
                print('打印签到图标');
              },
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: const Icon(Icons.more_horiz_sharp,
                  size: 20, color: Colors.black)),
        ],
      ),
      body: ListView(
        
        children: const [
          personMessage(),
          myHomePage(),
          personData(),
          moneyList(),
          createList(),
          toolList(),
          activeList(),
          cardList()
        ],
      ),
    );
  }
}

//个人头像部分
class personMessage extends StatelessWidget {
  const personMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 170,
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
                        height: 80,
                        width: 80,
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
                        width: 150,
                        height: 80,
                        margin: const EdgeInsets.all(2),
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              '梦之旅行者',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 217, 250, 214)),
                              child: (const Text(
                                '社区1V1',
                                style: TextStyle(color: Colors.green),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('从今把定春风笑，且作人间长寿仙',
                    style: TextStyle(color: Colors.grey)),
                IconButton(
                    onPressed: () {
                      print('打印签到图标');
                    },
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    icon: const Icon(Icons.note_alt_outlined,
                        size: 20, color: Colors.grey)),
              ],
            ),
          ),
          Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('粉丝', style: TextStyle(color: Colors.grey)),
                      Text('0', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('关注', style: TextStyle(color: Colors.grey)),
                      Text('0', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('获赞', style: TextStyle(color: Colors.grey)),
                      Text('0', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('赞过', style: TextStyle(color: Colors.grey)),
                      Text('0', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//我的携程
class myHomePage extends StatelessWidget {
  const myHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 243, 239),
      ),
      child: Column(
        children: [
          Container(
            width: 160,
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('我的携程',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text('个人主页',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 251, 252, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: GridView.count(
                physics:const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.bookmark_remove,
                            size: 30,
                            color: Colors.blue,
                          )),
                      const Text(
                        '全部订单',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待付款');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.mouse_sharp,
                            size: 30,
                            color: Colors.orange,
                          )),
                      const Text(
                        '待付款',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印未出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.alarm,
                            size: 30,
                            color: Color.fromARGB(255, 8, 176, 253),
                          )),
                      const Text(
                        '未出行',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待点评');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.diamond,
                            size: 30,
                            color: Color.fromARGB(255, 247, 91, 86),
                          )),
                      const Text(
                        '待点评',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

//收藏

class personData extends StatelessWidget {
  const personData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        width: 400,
        height: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 242, 243, 239),
            borderRadius: BorderRadius.circular(10)),
        child: GridView.count(
          physics:const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          children: [
            Column(
              children: const [
                Text(
                  '0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  '我的收藏',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  '100',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  '浏览历史',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  '0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  '积分',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  '0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  '优惠券',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ],
        ));
  }
}

//个人页钱包
class moneyList extends StatelessWidget {
  const moneyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 243, 239),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // width: 150,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('钱包',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text('礼品卡·现金>',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(96, 201, 199, 199)),
                  child: (const Text(
                    '去实名',
                    style: TextStyle(color: Colors.grey),
                  )),
                ),
              ],
            ),
          ),
          Container(
              // margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 251, 252, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: GridView.count(
                physics:const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: [
                  Column(
                    children: const [
                      Text(
                        '1.08万',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '财富赚钱',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '新人体验金',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '1026券',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '拿去花',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '先享后付',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '20万',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '信用贷',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '最高可借',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '50万',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '白金卡',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '最高额度',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

// 创作中心
class createList extends StatelessWidget {
  const createList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.all(10),
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 243, 239),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // width: 150,
                  child: (
                    const Text('创作中心',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
              ],
            ),
          ),
          Container(
              // margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 251, 252, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: GridView.count(
                physics:const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 15,),
                      Text(
                        '￥?500/月',
                        style: TextStyle(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '最高可赚',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
            
                    ],
                  ),
                  Column(
                    children: [
                      
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.pending_actions_outlined,
                            size: 30,
                            color: Colors.blue,
                          )),
                      const Text(
                        '首篇有奖发布',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.monetization_on,
                            size: 30,
                            color: Color.fromARGB(255, 243, 117, 33),
                          )),
                      const Text(
                        '首篇有奖发布',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}



//我的工具
class toolList extends StatelessWidget {
  const toolList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 243, 239),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('我的工具',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text('全部工具>',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        )),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 251, 252, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: GridView.count(
                physics:const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.card_membership_rounded,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '常用信息',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待付款');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.card_giftcard,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '我的奖品',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印未出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.money_rounded,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '报销凭证',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待点评');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.route,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '旅行足迹',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '订阅管理',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待付款');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.water_drop_outlined,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '我的信用',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印未出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.notifications_on_sharp,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '出行清单',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待点评');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.wechat_rounded,
                            size: 30,
                            color: Colors.grey,
                          )),
                      const Text(
                        '企业微信',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}



//活动广场
class activeList extends StatelessWidget {
  const activeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 242, 243, 239),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('活动广场',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text('更多>',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        )),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 251, 252, 228),
                  borderRadius: BorderRadius.circular(10)),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印订单出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.phone_android,
                            size: 30,
                            color: Color.fromARGB(255, 250, 106, 161),
                          )),
                      const Text(
                        '打牌领话费',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待付款');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.wallet_giftcard_outlined,
                            size: 30,
                            color: Colors.blue,
                          )),
                      const Text(
                        '领福利',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印未出行');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.money_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 60, 245, 60),
                          )),
                      const Text(
                        '现金红包',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('打印待点评');
                          },
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.route,
                            size: 30,
                            color: Color.fromARGB(255, 185, 28, 233),
                          )),
                      const Text(
                        '学生权益',
                        style: TextStyle(
                            color: Colors.black, fontSize: 12, height: 0.1),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}


//我的卡片
class cardList extends StatelessWidget {
  const cardList({super.key});

  List<Widget> _initGridViewData() {
    var tempList = cardData.map((value) {
      return Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colors.black)
        ),
        child: Column(
          children: [
            
            Text(
              value['title'],
              maxLines: 2, //文字超出部分省略显示
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(value['imageUrl']),
            Text(
              value['content'],
              maxLines: 2, //文字超出部分省略显示
              style: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
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
      childAspectRatio:1, //宽高比
      physics: const NeverScrollableScrollPhysics(), //解决滑动事假冲突
      children: _initGridViewData(),
    );
  }
}
