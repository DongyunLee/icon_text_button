# example

The example project of [IconTextButton](https://pub.dev/packages/icon_text_button)

## Sample

```dart
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
```