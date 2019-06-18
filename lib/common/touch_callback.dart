import 'package:flutter/material.dart';

class TouchCallBack extends StatefulWidget {
  final Widget child; //子组件
  final VoidCallback onPressed;
  final bool isFeed;
  final Color backgroundColor;

  TouchCallBack({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.isFeed: true,
    this.backgroundColor: const Color(0xffd8d8d8),
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TouchCallBackState();
  }
}

class _TouchCallBackState extends State<TouchCallBack> {
  var color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (widget.isFeed == false) return;
        setState(() {
          color = widget.backgroundColor;
        });
      },
      onPanCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}
