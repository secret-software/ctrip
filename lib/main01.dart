import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好flutter")),
      body:Column(
        children:const [
          MyApp(),
          MyButton(),
          MyText()
        ],
      )
    ),
  ));
}


// 矩形
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
          alignment: Alignment.center, //配置container容器内元素的方位
          width: 200,
          height: 200,
          // transform: Matrix4.translationValues(40, 0,0),//位移
          // transform: Matrix4.rotationZ(0.2),//位移

          decoration:BoxDecoration(
            color: Colors.red,//背景颜色
            border: Border.all(  //边框
              color: Colors.yellow,
              width: 2
            ),
            borderRadius: BorderRadius.circular(10),  //配置圆角
            boxShadow:const [  //配置阴影
              BoxShadow(
                color: Colors.black,
                blurRadius: 20.0
              )
            ],
            gradient:const LinearGradient(
              colors: [
                Colors.red,Colors.yellow
              ]
            )
          ),
          child:const Text('你好flutter',style: TextStyle(
            color: Colors.white,
            fontSize: 20
          )),
        ),
      );
  }
}

//按钮
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      // padding: EdgeInsets.fromLTRB(40, 5, 0, 5),
      margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration:BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child:const Text('按钮',style: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),),
    );
  }
}


// 文字
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin:const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: const Text(
      '你好我是flutter你好我是flutter你好我是flutter',
      textAlign: TextAlign.left,
      maxLines: 1,
      overflow: TextOverflow.ellipsis, //溢出显示几个点
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        color: Colors.red,
        fontStyle: FontStyle.italic,
        letterSpacing: 6,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.dashed
      ),
      ),
    );
  }
}




// ------------------------------------------------------------------------------

// void main(){
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: const Text('你好呀flutter')),
//       body: Column(
//         children:const [
//           MyApp(),
//           SizedBox(height: 20,),
//           Circular(),
//           SizedBox(height: 20),
//           ClipImage()
//         ],
//       )
//       ),
//   ));
// }

// //矩形加载远程图片
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 300,
//         width: 500,
//         margin:const EdgeInsets.fromLTRB(0,40, 0, 0),
//         decoration: const BoxDecoration(
//           color: Colors.yellow
//         ),
//         child:Image.network(
//           'https://c-ssl.duitang.com/uploads/blog/202109/04/20210904235434_7128e.jpeg',
//           // fit: BoxFit.fill, //图片充满容器
//           // fit: BoxFit.cover,//裁剪图片，不拉伸
//           // fit: BoxFit.contain,//全图显示，显示原比例
//           // repeat: ImageRepeat.repeatX  //x方向进行平铺


        
//         ) ,
//       ),
//     );
//   }
// }


// //圆形加载远程图片
// class Circular extends StatelessWidget {
//   const Circular({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       width: 150,
//       decoration:BoxDecoration(
//         color: Colors.yellow,
//         borderRadius: BorderRadius.circular(75),
//         image:const DecorationImage(
//           image: NetworkImage('https://c-ssl.duitang.com/uploads/blog/202105/04/20210504225552_32498.jpg'),
//           fit:BoxFit.cover,
//         )
//       ),
      
//     );
//   }
// }



// //实现一个圆形或圆角图片:ClipOval
// class ClipImage extends StatelessWidget {
//   const ClipImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipOval(
//       child:Image.network(
//         'https://c-ssl.duitang.com/uploads/blog/202108/03/20210803224728_9b38c.jpg',
//         width: 150,
//         height: 150,
//         fit: BoxFit.cover,
//       ) ,
//     );
//   }
// }




// --------------------------------------------------------------------------------------------------
// 动态列表
// class MessageList extends StatelessWidget {
//   const MessageList({super.key});


//自定义列表
//   List <Widget> _initListData(){
//     List <Widget> list =[];

//     for (var i=0;i<20;i++) {
//       list.add(ListTile(
//         title: Text('我是一个列表---${i}'),
//       )); 
//     }
//     return list;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height:550,
//       child: ListView(
//         children: _initListData(),
//       ),
//     );
//   }
// }
