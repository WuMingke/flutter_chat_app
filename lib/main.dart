import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search.dart';

void main() => runApp(MyApp());

/// 自定义主题
/// 定义路由表
/// 指定首页

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Color(0xFFebebeb),
          cardColor: Colors.green),
      routes: <String, WidgetBuilder>{
        "app": (context) => App(),
        "/friends": (_) => WebviewScaffold(
              url: "www.baidu.com",
              appBar: AppBar(
                title: Text("百度"),
              ),
              withLocalUrl: true,
              withLocalStorage: true,
            ),
        "search": (context) => Search(),
      },
      home: AppLoading(),
    );
  }
}
