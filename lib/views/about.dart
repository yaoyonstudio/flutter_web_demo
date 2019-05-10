import 'package:flutter_web/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
        // title: new Text(widget.title),
      // ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('About Page'),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'img/dress.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
