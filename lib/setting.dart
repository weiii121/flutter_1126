import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListViewPage(),
    );
  }
}

class MyListViewPage extends StatelessWidget {
  const MyListViewPage({super.key});

  //const MyListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: ListView(
        children: const [

          InkWell(
            child: ListTile(

              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.color_lens_outlined),
                  SizedBox(width: 8),
                  Text(
                    'Change environment color',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

          ),
          ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Icon(Icons.)
                ],
              ),
          ),
          ListTile(
              title: Text(
                'Item 3',
                textAlign: TextAlign.center,
              )
          ),
          // 添加更多的列表项
        ],
      ),
    );
  }
}