import 'package:flutter/material.dart';

class AppLoading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppLoadingState();
  }
}

class _AppLoadingState extends State<AppLoading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //在加载页面停留3s
    Future.delayed(Duration(seconds: 3), () {
      print("Flutter即时通讯App界面实现...");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: <Widget>[
            Image.asset("images/loading.png"),
          ],
        ),
      ),
    );
  }
}
