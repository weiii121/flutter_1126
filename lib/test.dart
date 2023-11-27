import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewPage(),
    );
  }
}

class MyListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          InkWell(
            onTap: () {
              // 在这里定义点击处理程序，例如导航到其他页面
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage('Option 1')),
              );
            },
            child: const ListTile(
              title: Text(
                  'Change environment color'
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // 在这里定义点击处理程序，例如导航到其他页面
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage('Option 2')),
              );
            },
            child: ListTile(
              title: Text('Option 2'),
            ),
          ),
          InkWell(
            onTap: () {
              // 在这里定义点击处理程序，例如导航到其他页面
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage('Option 3')),
              );
            },
            child: ListTile(
              title: Text('Option 3'),
            ),
          ),
          // 添加更多的列表项
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String option;

  DetailsPage(this.option);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Text('Details for $option'),
      ),
    );
  }
}
