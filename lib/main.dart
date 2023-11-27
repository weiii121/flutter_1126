import 'package:flutter/material.dart';
import 'package:project_1126/connected.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: ConnectPage()));

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: const Text("Connecting_Page"),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/bluetooth-sync.gif',
              width: 85,
              height: 85,
              //fit: BoxFit.fill,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ConnectedPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text('Connect'),
            ),
          ],
        ),
      ),
    );
  }
}



