library icon_text_button;

import 'dart:ffi';

import 'package:flutter/material.dart';

enum BtnType { raise, outline, flat, icon }

class IconTextButton extends StatefulWidget {
	final BtnType btnType;
	
	// icon图标
	@required
	final Icon icon;
	
	// 图标下的文字
	@required
	final Text label;
	
	// 大小
	final Double size;
	
	// 颜色
	final Color color;
	
	// 背景颜色
	final Color bgColor;
	
	// 点击事件
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

class _IconTextButtonState extends State<IconTextButton> {
  @override
  Widget build(BuildContext context) {
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
