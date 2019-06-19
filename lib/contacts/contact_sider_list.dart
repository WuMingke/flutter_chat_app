import 'package:flutter/material.dart';
import 'contact_vo.dart';

class ContractSliderList extends StatefulWidget {
  final List<ContactVO> items; //好友列表数据

  final IndexedWidgetBuilder headBuilder; //好友列表头部构造器

  final IndexedWidgetBuilder itemBuilder; //好友列表项构造器

  final IndexedWidgetBuilder sectionBuilder; //字母构造器

  ContractSliderList(
      {Key key,
      @required this.items,
      @required this.headBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContractSliderState();
  }
}

class _ContractSliderState extends State<ContractSliderList> {
  var _scrollController = ScrollController();

  bool _onNotification(ScrollNotification n) {
    return true;
  }

  Widget _isShowHeaderView(index) {
    if (index == 0 && widget.headBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headBuilder(context, index),
      );
    }
    return Container();
  }

  _shouldShowHeader(position) {
    if (position < 0) {
      return false;
    }
    if (position != 0 &&
        widget.items[position].seationKey !=
            widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
              onNotification: _onNotification,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),
                          child: widget.sectionBuilder(context, index),
                        ),
                        Column(
                          children: <Widget>[
                            widget.itemBuilder(context, index),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                controller: _scrollController,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: widget.items.length,
              ))
        ],
      ),
    );
  }
}
