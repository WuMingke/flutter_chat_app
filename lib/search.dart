import 'package:flutter/material.dart';
import 'common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchState();
  }
}

class _SearchState extends State<Search> {
  var focusNode = FocusNode();

  _requestFocus() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text) {
    return TouchCallBack(
      isFeed: false,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xff1aad19),
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchCallBack(
                  isFeed: false,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.only(left: 12, right: 10),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  margin: EdgeInsets.only(left: 50, right: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.green),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          focusNode: _requestFocus(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          onChanged: (String text) {},
                          decoration: InputDecoration(
                            helperText: "搜索",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xFFaaaaaa),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    "常用搜索",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFb5b5b5),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _getText("朋友"),
                      _getText("聊天"),
                      _getText("群组"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _getText("Flutter"),
                      _getText("Dart"),
                      _getText("C++"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
