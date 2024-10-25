import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(useMaterial3: false),
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Text('S'),),
              accountName: Text('Stéfani'), 
              accountEmail: Text ('stefani@gmail.com'))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Youtube'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.video_call),
          Icon(Icons.notifications),
          Icon(Icons.search),
        ],
      ),
      body: Center(
          child: Text(
        contador.toString(),
        style: TextStyle(fontSize: 30),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contador++;
          });
          print(contador);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
    );
  }
}
