import 'package:flutter_web/material.dart';

import 'package:flutter_web_demo/views/index.dart';
import 'package:flutter_web_demo/views/postlist.dart';
import 'package:flutter_web_demo/views/about.dart';
import 'package:flutter_web_demo/views/test.dart';




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();

    // 初始化Tab Controller
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[new IndexPage(), new PostListPage(), new AboutPage(), new TestPage()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Color.fromRGBO(246, 246, 246, 1.0),
        child: new TabBar(
          labelStyle: TextStyle(height: 1.0,),
          labelColor: Color.fromRGBO(255, 121, 0, 1.0),
          unselectedLabelColor: Color.fromRGBO(153, 153, 153, 1.0),
          indicatorColor: Color.fromRGBO(255, 121, 0, 1.0),
          indicatorWeight: 0.01,
          tabs: <Tab>[
            new Tab(
              text: 'Index',
              icon: Icon(Icons.home),
            ),
            new Tab(
              text: '文章',
              icon: Icon(Icons.power),
            ),
            new Tab(
              text: 'About',
              icon: Icon(Icons.info),
            ),
            new Tab(
              text: '测试',
              icon: Icon(Icons.adb),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}