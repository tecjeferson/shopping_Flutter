import 'package:flutter/material.dart';
import 'package:shopping/themes/dark.theme.dart';
import 'package:shopping/themes/light.theme.dart';
import 'Pages/tabs.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      theme: darthTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
