import 'package:flutter/material.dart';
import 'package:project_1126/data.dart';
import 'package:project_1126/setting.dart';
import 'package:project_1126/userinfo.dart';


/*void main() => runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage()
    )
);*/

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          leading: const CustomBackButton(),
          title: const Text("SPIE-earpods"),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 20),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.person,
                  size: 20,
                ),
              ),
              Tab(
                icon: Icon(
                    Icons.info,
                    size: 20,
                ),
              ),
              Tab(
                icon: Icon(
                    Icons.settings,
                    size: 20,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              UserInfoPage(),
              DataPage(),
              SettingPage(),
            ]
        ),
      ),

    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}