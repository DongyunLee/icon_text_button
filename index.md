# IconTextButton

A button Flutter Widget that contain Icon and Text together.

## Getting Started
1. install the dependency

    [To Read The Official Modules](https://pub.dev/packages/icon_text_button#-installing-tab-)


* in *pubspec.yaml* :
    
    ```yaml
    dependencies:
      flutter:
        sdk: flutter
    
      \# Look here, you will get the IconTextButton support follows this:
      icon_text_button: ^0.1.0
    
    ```

* and then, type follows in your terminal:
    
    ```shell
    flutter pub get
    ```

2. import the `IconTextButton` in your widget

## Examples:

### A Sample 

```dart
import 'package:flutter/material.dart';
import 'package:icon_text_button/icon_text_button.dart';

void main() => runApp(MyApp());

///
/// The bootstrap
/// 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget IconTextButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(title: 'Widget IconTextButton Demo Home Page'),
    );
  }
}

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
		          ),// Widget RaiseButton
		          
		          IconTextButton(
			          icon: Icon(Icons.all_inclusive),
			          label: Text('FlatButton'),
			          onPress: () {},
			          color: Colors.red,
			          btnType: BtnType.flat,
		          ),// Widget FlatButton
		          
		          IconTextButton(
			          icon: Icon(Icons.ac_unit),
			          label: Text('OutlineButton'),
			          btnType: BtnType.outline,
			          color: Colors.cyan,
			          onPress: () {},
		          ),// Widget OutlineButton
		          
		          IconTextButton(
			          icon: Icon(Icons.import_contacts),
			          label: Text('IconButton'),
			          btnType: BtnType.icon,
			          onPress: () {},
		          )// Widget IconButton
	          ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}


```


More details you can see the code in the dictionary named `/example`.
Join it, and run it!

```sh
cd example
```




