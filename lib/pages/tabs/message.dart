import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/listData.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        elevation: 0, //去除阴影
        // toolbarHeight: 70, //设置appbar的高度
        centerTitle: true,  //title 居中
        backgroundColor: Colors.white,
        title:  const Text('消息',textAlign: TextAlign.center,style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印客服图标');
          },padding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
           icon:const Icon(Icons.person_add_alt_rounded,size:20,color: Colors.black)),
           const Text('客服',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1),)
            ],
            
          ),
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印设置图标');
          },padding:const EdgeInsets.all(0),
           icon:const Icon(Icons.settings,size:20,color: Colors.black,)),
           const Text('设置',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1))
            ],
          )
        ],
        ),
      body: ListView(
        children:  const [
          MessageTab(),
          MessageList(),
          // Expanded(child:MessageTab()),
          // Expanded(child: MessageList()),
        ],
      ),
    );
  }
}

// 消息列表tab
class MessageTab extends StatelessWidget {
  const MessageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 251, 252, 228),
        
        borderRadius: BorderRadius.circular(10)
      ),
      // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GridView.count(
        
        crossAxisCount: 4,
        children: [
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印订单出行');
          },padding:const EdgeInsets.all(0),
           icon:const Icon(Icons.date_range_outlined,size:20,color: Colors.blue,)),
           const Text('订单出行',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1),)
            ],
            
          ),
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印互动消息');
          },padding:const EdgeInsets.all(0),
           icon:const Icon(Icons.message,size:20,color: Colors.orange,)),
           const Text('互动消息',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1),)
            ],
            
          ),
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印账号通知');
          },padding:const EdgeInsets.all(0),
           icon:const Icon(Icons.alarm,size:20,color: Color.fromARGB(255, 247, 93, 4),)),
           const Text('账户通知',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1),)
            ],
            
          ),
          Column(
            children: [
                   IconButton(onPressed: (){
            print('打印会员服务');
          },padding:const EdgeInsets.all(0),
           icon:const Icon(Icons.diamond,size:20,color: Color.fromARGB(255, 89, 126, 2),)),
           const Text('会员服务',style: TextStyle(color: Colors.black,fontSize: 12,height: 0.1),)
            ],
            
          )
        ],
      )
    );
  }
}



//消息列表
class MessageList extends StatelessWidget {
   const MessageList({super.key});


List<Widget> _initListData(){
  List<Widget> tempList =[];

  for (var i =0; i<listData.length;i++){
    tempList.add(
      ListTile(
        leading: Image.network('${listData[i]['imageUrl']}'),
        title: Text('${listData[i]['title']}'),
        subtitle: Text('${listData[i]['content']}'),
      )
    );
  }


  return tempList;
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height:575,
      child: ListView(
       children: _initListData(),
      ),
    );
  }
}
