import 'package:flutter/material.dart';
import '../common/touch_callback.dart';

class ImItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Icon icon;

  ImItem({Key key, this.title, this.imagePath, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TouchCallBack(
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Container(
                child: imagePath != null
                    ? Image.asset(
                        imagePath,
                        width: 32,
                        height: 32,
                      )
                    : SizedBox(
                        height: 32,
                        width: 32,
                        child: icon,
                      ),
                margin: EdgeInsets.only(left: 22, right: 20),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF353535),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          switch (title) {
            case "好友动态":
              Navigator.pushNamed(context, "/friends");
              break;
            case "联系客服":
              break;
          }
        });
  }
}
