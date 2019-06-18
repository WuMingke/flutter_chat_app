import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import '../common/im_item.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            height: 80,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 15),
                    child: Image.asset("images/portrait.jpg"),
                    width: 70,
                    height: 70,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "小明",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF353535),
                          ),
                        ),
                        Text(
                          "账号：xiaoming",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFa9a9a9),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 15),
                    child: Image.asset(
                      "images/code.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: ImItem(
              title: "好友动态",
              imagePath: "images/code.png",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: "消息管理",
                  imagePath: "images/code.png",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 1,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  title: "我的相册",
                  imagePath: "images/code.png",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 1,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  title: "我的文件",
                  imagePath: "images/code.png",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 1,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  title: "联系客服",
                  imagePath: "images/code.png",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    height: 1,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: ImItem(
                    title: "清理缓存",
                    imagePath: "images/code.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
