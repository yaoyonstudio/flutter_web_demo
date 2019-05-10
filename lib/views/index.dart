import 'package:flutter_web/material.dart';

import 'package:flutter_web_demo/views/sub.dart';


class IndexPage extends StatefulWidget {
  IndexPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IndexPageState createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final sliderController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WIN_WIDTH = MediaQuery.of(context).size.width;

    return new Scaffold(
      // appBar: new AppBar(
        // title: new Text(widget.title),
      // ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Index Page'),
            Container(
              width: WIN_WIDTH,
              height: 160.0,
              decoration: BoxDecoration(color: Colors.white,),
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: sliderController,
                children: <Widget>[
                  Container(
                    child: Text('Slider 1'),
                  ),
                  Container(
                    child: Text('Slider 2'),
                  ),
                  Container(
                    child: Text('Slider 3'),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubPage()),
                );
              },
              child: Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}
