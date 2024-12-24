import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeApp());
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Bizining tab-bar"),
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab, // indicator tabbarni to'liq egallash
              tabs: [
                Tab(text: "1"),
                Tab(text: "2"),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("1-oyna")),
            Center(child: Text("2-oyna"))
          ],),
        ),
      );
  }
}
