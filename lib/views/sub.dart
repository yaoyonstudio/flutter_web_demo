import 'package:flutter_web/material.dart';

class SubPage extends StatefulWidget {
  SubPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SubPageState createState() => new _SubPageState();
}

class _SubPageState extends State<SubPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('测试'),
      // ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Sub Page'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('返回',)
            ),
          ],
        ),
      ),
    );
  }
}
