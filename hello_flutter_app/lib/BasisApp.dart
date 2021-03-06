import 'package:flutter/material.dart';

// MyApp 类继承自 StatelessWidget，@override 重写
class BasisApp extends StatelessWidget {
  final List<String> items;
  // 构造函数
  BasisApp({Key key, @required this.items}) : super(key: key);

  @override

  // build 方法
  Widget build(BuildContext context) {
    // Material 材料 App
    return MaterialApp(
        title: 'Welcome to Flutter!',
        // Scaffold 脚手架创建
        home: Scaffold(
            // Bar
            // appBar: AppBar(
            //     title: Text('Flutter'),
            // ),
            appBar: AppBar(title: Text('Flutter Navigation')),
            body: CardLayout()));
  }
}

// 文本
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Text(
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
    );
  }
}

// 渐变容器
class LinearGradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      child: Text(
        'Hello Flutter \n🤪🤪🤪🤪🤪🤪',
        style: TextStyle(fontSize: 38.0),
      ),
      alignment: Alignment.topCenter,
      width: 500.0,
      height: 400.0,
      // color: Colors.lightBlue,
      padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Colors.greenAccent,
            Colors.lightBlue,
            Colors.purpleAccent
          ]),
          border: Border.all(width: 2.0, color: Colors.redAccent),
          borderRadius: BorderRadius.circular(15.0)),
    );
  }
}

// 网络图片
class NetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/18-11-16/77393802.jpg',
      fit: BoxFit.contain,
      color: Colors.greenAccent,
      colorBlendMode: BlendMode.multiply,
      repeat: ImageRepeat.repeat,
    );
  }
}

// 横向列表
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Container(
        width: 180.0,
        color: Colors.lightBlue,
      ),
      Container(
        width: 180.0,
        color: Colors.yellowAccent,
      ),
      Container(
        width: 180.0,
        color: Colors.deepOrange,
      ),
      Container(
        width: 180.0,
        color: Colors.purpleAccent,
      ),
    ]);
  }
}

// 竖向列表
class VerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.perm_camera_mic),
          title: Text('perm_camera_mic'),
        ),
        ListTile(
          leading: Icon(Icons.add_call),
          title: Text('add_call'),
        ),
        ListTile(
          leading: Icon(Icons.access_time),
          title: Text('access_time'),
        ),
        ListTile(
          leading: Icon(Icons.add_box),
          title: Text('add_box'),
        )
      ],
    );
  }
}

// 竖向图片列表
class VerticalImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Image.network(
            'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
        Image.network(
            'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
        Image.network('http://jspang.com/static/myimg/smile-vue.jpg'),
      ],
    );
  }
}

// 数据列表
class DataList extends StatelessWidget {
  final List<String> items;
  DataList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.call),
          title: Text('欢迎光临，${items[index]}为您服务'),
          subtitle: Text('天上人间 恭祝您，阖家幸福'),
          trailing: Icon(Icons.arrow_drop_down),
        );
      },
    );
  }
}

// 卡片列表
class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        childAspectRatio: 0.75,
      ),
      children: <Widget>[
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2368873040.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826592.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826873.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826863.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img1.doubanio.com/view/photo/m/public/p2508826727.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

// 行
class RowViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      // Expanded(
      //   child:
      RaisedButton(
        onPressed: () {},
        color: Colors.redAccent,
        child: Text('Button'),
      ),
      // ),
      Expanded(
        child: RaisedButton(
          onPressed: () {},
          color: Colors.blueAccent,
          child: Text('Blue Button'),
        ),
      ),
      // Expanded(
      //   child:
      RaisedButton(
        onPressed: () {},
        color: Colors.orangeAccent,
        child: Text('Button'),
      ),
      // ),
    ]);
  }
}

// 列
class ColumnViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('我是1号技师'),
        Text('我是2号技师'),
        Expanded(child: Text('我是3号技师')),
        Expanded(child: Text('我是4号技师')),
        Expanded(child: Text('我是5号技师，我会的可多了')),
      ],
    ));
  }
}

// 层
class StackViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        ClipOval(
          child: FadeInImage.assetNetwork(
            placeholder: "",
            fit: BoxFit.cover,
            image:
                "https://avatars2.githubusercontent.com/u/13606492?s=460&v=4",
            width: 300.0,
            height: 300.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('野猪佩奇'),
        ),
        // new Positioned(
        //   top: 10.0,
        //   left: 130.0,
        //   child: new Text('野猪佩奇'),
        // ),
        // new Positioned(
        //   right: 130.0,
        //   bottom: 10.0,
        //   child: new Text('社会人'),
        // )
      ],
    );

    return Center(
      child: stack,
    );
  }
}

// 卡片布局
class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('天上人间 北京总店'),
            subtitle: Text('北京市 海淀区 颐和园路'),
            leading: Icon(Icons.gps_fixed),
          ),
          Divider(),
          ListTile(
            title: Text('天上人间 上海分店'),
            subtitle: Text('上海市 浦东新区 达尔文路'),
            leading: Icon(Icons.gps_fixed),
          ),
          Divider(),
          ListTile(
            title: Text('天上人间 成都分店'),
            subtitle: Text('成都市 武侯区 一环路'),
            leading: Icon(Icons.gps_fixed),
          ),
        ],
      ),
    );

    return Center(
      child: card,
    );
  }
}

// 侧滑菜单
class SlideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        ClipOval(
          child: FadeInImage.assetNetwork(
            placeholder: "",
            fit: BoxFit.cover,
            image:
                "https://avatars2.githubusercontent.com/u/13606492?s=460&v=4",
            width: 90.0,
            height: 90.0,
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('侧滑菜单')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            stack,
            ListTile(
              title: Text("识花"),
              trailing: Icon(Icons.local_florist),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("搜索"),
              trailing: Icon(Icons.search),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("设置"),
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('我想侧滑点什么 🤪')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: Center(),
    );
  }
}
