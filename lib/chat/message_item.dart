import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'message_data.dart';
import '../common/touch_callback.dart';

class MessageItem extends StatelessWidget {
  final MessageData _messageData;

  MessageItem(this._messageData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFd9d9d9),
          ),
        ),
      ),
      height: 64,
      child: TouchCallBack(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Image.network(
                _messageData.avatar,
                width: 48,
                height: 48,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _messageData.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353535),
                    ),
                    maxLines: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  Text(
                    _messageData.subTitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFa9a9a9),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, //显示不完的用省略号表示
                  )
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(right: 12, top: 12),
              child: Text(
                formatDate(
                  _messageData.time,
                  [HH, ":", nn, ":", ss],
                ).toString(),
                style: TextStyle(fontSize: 14, color: Color(0xFFa9a9a9)),
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
