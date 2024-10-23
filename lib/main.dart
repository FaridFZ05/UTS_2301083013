import 'package:flutter/material.dart';
import 'package:uts_23010083013_a/route/page_pelanggan.dart';
import 'package:uts_23010083013_a/route/page_warnet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warnet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/pelanggan': (context) => PelangganScreen(),
        '/warnet': (context) => WarnetScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Pelanggan'),
              onTap: () {
                Navigator.pushNamed(context, '/pelanggan');
              },
            ),
            ListTile(
              title: Text('Warnet'),
              onTap: () {
                Navigator.pushNamed(context, '/warnet');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Farid Fadlizil Ikram || 2301083013'),
      ),
    );
  }
}
