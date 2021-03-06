import 'package:flutter/material.dart';

// 导航
class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('技师列表')),
        body: Center(
          child: RaisedButton(
            child: Text('查看技师资料'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreenPage()));
            },
          ),
        ));
  }
}

// 导航详情页
class SecondScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('技师资料')),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// 技师类
class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

// 技师列表脚手架
class ProductHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductList(
        products:
            List.generate(20, (i) => Product('专业技师 $i 号', '漂亮的小姐姐,编号为 $i')));
  }
}

// 技师列表
class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('技师列表')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}号技师详情')),
      body: Center(child: Text('${product.description}')),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('技师联系方式'),
      ),
      body: Center(child: RouteButton()),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJiejie(context);
      },
      child: Text('去问小姐姐'),
    );
  }

  _navigateToXiaoJiejie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJiejiePage()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJiejiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小姐姐列表'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿小姐姐'),
              onPressed: () {
                Navigator.pop(context, '大长腿小姐姐,电话1881818188');
              },
            ),
            RaisedButton(
              child: Text('小蛮腰小姐姐'),
              onPressed: () {
                Navigator.pop(context, '小蛮腰小姐姐,电话1901818188');
              },
            ),
            RaisedButton(
              child: Text('大胸脯小姐姐'),
              onPressed: () {
                Navigator.pop(context, '大胸脯小姐姐,电话1991818188');
              },
            ),
          ],
        ),
      ),
    );
  }
}
