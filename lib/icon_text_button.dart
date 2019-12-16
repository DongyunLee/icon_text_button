library icon_text_button;

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
	///
	/// If you need a responsive size to fit different screen resolution
	/// If true， all size of this widget will be convert into percentage of the screen that under safe-area
	/// 是否要使用自适应的尺寸，如果此项为true，则所有的尺寸都会转化为
	///
	final bool isResponsive;
	
	///
	/// The button style that you will use
	/// 你要使用的按钮组件样式
	///
	final BtnType btnType;
	
	///
	/// The icon you want to display
	/// icon图标
	///
	final Icon icon;
	
	///
	/// The text you will display under the icon
	/// 图标下的文字
	///
	final Text label;
	
	///
	/// The size of whole button
	/// 大小
	///
	final double size;
	
	///
	/// The Padding around icon & text
	/// 内边距
	///
	final EdgeInsetsGeometry padding;
	
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
	final VoidCallback onPress;
	
	final Color borderColor;
	
	const IconTextButton({Key key,
		@required this.icon,
		@required this.label,
		this.size,
		this.color,
		this.bgColor,
		this.btnType,
		@required this.onPress,
		this.borderColor,
		this.padding,
		this.isResponsive = true})
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
			padding: widget.padding == null
					? widget.padding
					: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
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
				return Ink(
					decoration: ShapeDecoration(
						color: widget.bgColor,
						shape: Border(),
					),
					child: OutlineButton(
						child: wid,
						splashColor: widget.color,
						textColor: widget.color,
						borderSide: widget.borderColor != null
								? BorderSide(color: widget.borderColor)
								: null,
						onPressed: widget.onPress,
					),
				);
			case BtnType.flat:
				return FlatButton(
					child: wid,
					textColor: widget.color,
					splashColor: widget.color,
					color: widget.bgColor,
					onPressed: widget.onPress,
				);
			case BtnType.icon:
				return Container(
					child: Ink(
						decoration: ShapeDecoration(
							color: widget.bgColor,
							shape: Border(),
						),
						child: IconButton(
							icon: widget.icon,
							color: widget.color,
							splashColor: widget.color,
							tooltip: widget.label.data,
							onPressed: widget.onPress,
						),
					),
				);
			default:
				return RaisedButton(
					child: wid,
					textColor: widget.color,
					splashColor: widget.color,
					color: widget.bgColor,
					onPressed: widget.onPress,
				);
		}
	}
}
