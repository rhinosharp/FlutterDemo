// 引入 UI 库
import 'package:flutter/material.dart'; 

// main 入口方法，进入 MyApp
// 单行调用使用 “=> 函数”
// void main() => runApp(MyApp()); 
void main() {
  runApp(MyApp());
}

// MyApp 类继承自 StatelessWidget，@override 重写
class MyApp extends StatelessWidget {
  @override

  // build 方法
  Widget build(BuildContext context) {
    // Material 材料 App
    return MaterialApp(
      title: 'Welcome to Flutter!',
      // Scaffold 脚手架创建
      home: Scaffold(
          // Bar
        appBar: AppBar(
            title: Text('Flutter'),
        ),
        // Body
        body: Center(
          child: Container(

            

            /// Text 
            child: Text(
              'Hello Word?! 🤪，我是一个专门展示文本的东西，额，我应该被称作组件...',
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
              
          ),
        ),
      ),
    );
  }
}

/// 官方点击加1 Demo MyApp
// // MyApp 类继承自 StatelessWidget，@override 重写
// class MyApp extends StatelessWidget {
//   @override

//   // build 方法
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter!',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }