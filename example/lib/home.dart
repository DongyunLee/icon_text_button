import 'package:flutter/material.dart';
import 'package:icon_text_button/icon_text_button.dart';

//import 'package';
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
	          children: <Widget>[
		          IconTextButton(
			          icon: Icon(Icons.school),
			          label: Text('RaiseButton'),
			          color: Colors.white,
			          onPress: () {},
		          ),
		          IconTextButton(
			          icon: Icon(Icons.all_inclusive),
			          label: Text('FlatButton'),
			          onPress: () {},
			          color: Colors.red,
			          btnType: BtnType.flat,
		          ),
		          IconTextButton(
			          icon: Icon(Icons.ac_unit),
			          label: Text('OutlineButton'),
			          btnType: BtnType.outline,
			          color: Colors.cyan,
			          onPress: () {},
		          ),
		          IconTextButton(
			          icon: Icon(Icons.import_contacts),
			          label: Text('IconButton'),
			          btnType: BtnType.icon,
			          onPress: () {},
		          )
	          ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
