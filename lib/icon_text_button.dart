library icon_text_button;

import 'dart:ffi';

import 'package:flutter/material.dart';

///
/// The enum values Of the button's type
/// 按钮类型的枚举值
///
enum BtnType { raise, outline, flat, icon }

///
/// The Button with icon & text together
/// 图文按钮
///
class IconTextButton extends StatefulWidget {
  final BtnType btnType;
  
  ///
  /// The icon you want to display
  /// icon图标
  ///
  @required
  final Icon icon;
  
  ///
  /// The text you will display under the icon
  /// 图标下的文字
  ///
  @required
  final Text label;
  
  ///
  /// The size of whole button
  /// 大小
  ///
  final Double size;
  
  ///
  /// The color of icon & text
  /// 颜色
  ///
  final Color color;
  
  ///
  /// The color of Background
  /// 背景颜色
  ///
  final Color bgColor;
  
  ///
  /// The event when you click our button
  /// 点击事件
  ///
  @required
  final Function onPress;
  
  const IconTextButton({Key key,
    this.icon,
    this.label,
    this.size,
    this.color,
    this.bgColor,
    this.btnType,
    this.onPress})
      : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _IconTextButtonState();
}

///
/// The State of IconTextButton
/// 状态类
///
class _IconTextButtonState extends State<IconTextButton> {
  @override
  Widget build(BuildContext context) {
    ///
    /// The detail of our button
    /// 按钮的内部实现
    ///
    var wid = Padding(
      padding: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          widget.icon,
          const SizedBox(height: 8.0),
          widget.label
        ],
      ),
    );
  
    ///
    /// The switcher of button type
    /// 按钮类型处理
    ///
    switch (widget.btnType) {
      case BtnType.outline:
        return OutlineButton(
          child: wid,
          textColor: widget.color,
          onPressed: widget.onPress,
        );
      case BtnType.flat:
        return FlatButton(
          child: wid,
          textColor: widget.color,
          onPressed: widget.onPress,
        );
      case BtnType.icon:
        return IconButton(
          icon: widget.icon,
          color: widget.color,
          tooltip: widget.label.toString(),
          onPressed: widget.onPress,
        );
      default:
        return RaisedButton(
          child: wid,
          textColor: widget.color,
          onPressed: widget.onPress,
        );
    }
  }
}
