import 'package:flutter/material.dart';
import 'chat/message_page.dart';
import 'contacts/contacts.dart';
import 'personal/personal.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  MessagePage _messagePage;

  Contacts _contact;

  Person _person;

  _currentPage() {
    switch (_currentIndex) {
      case 0:
        if (_messagePage == null) {
          _messagePage = MessagePage();
        }
        return _messagePage;
      case 1:
        if (_contact == null) {
          _contact = Contacts();
        }
        return _contact;
      case 2:
        if (_person == null) {
          _person = Person();
        }
        return _person;
    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(
                  imagePath,
                  width: 32,
                  height: 32,
                )
              : SizedBox(
                  width: 32,
                  height: 32,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("即时通讯"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "search");
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 20),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500, 76, 10, 0),
                  items: <PopupMenuEntry>[
                    _popupMenuItem("发起会话", imagePath: "images/services.png"),
                    _popupMenuItem("添加好友", imagePath: "images/services.png"),
                    _popupMenuItem("联系客服", imagePath: "images/services.png"),
                  ],
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            BottomNavigationBarItem(
              title: Text(
                "聊天",
                style: TextStyle(
                  color: _currentIndex == 0
                      ? Color(0xFF46c01b)
                      : Color(0xFF999999),
                ),
              ),
              icon: _currentIndex == 0
                  ? Image.asset(
                      "images/profile.png",
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      "images/profile_press.png",
                      width: 32,
                      height: 28,
                    ),
            ),
            BottomNavigationBarItem(
              title: Text(
                "好友",
                style: TextStyle(
                  color: _currentIndex == 1
                      ? Color(0xFF46c01b)
                      : Color(0xFF999999),
                ),
              ),
              icon: _currentIndex == 1
                  ? Image.asset(
                      "images/profile.png",
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      "images/profile_press.png",
                      width: 32,
                      height: 28,
                    ),
            ),
            BottomNavigationBarItem(
              title: Text(
                "我的",
                style: TextStyle(
                  color: _currentIndex == 2
                      ? Color(0xFF46c01b)
                      : Color(0xFF999999),
                ),
              ),
              icon: _currentIndex == 2
                  ? Image.asset(
                      "images/profile.png",
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      "images/profile_press.png",
                      width: 32,
                      height: 28,
                    ),
            ),
          ]),
      body: _currentPage(),
    );
  }
}
