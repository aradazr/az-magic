import 'package:flutter/material.dart';

class GlobalKeyProvider extends ChangeNotifier {
  //* page 1 key
  final GlobalKey<ScaffoldState> page1Key = GlobalKey<ScaffoldState>();

  //* page 2 key
  final GlobalKey<ScaffoldState> page2Key = GlobalKey<ScaffoldState>();

  //* page 3 key
  final GlobalKey<ScaffoldState> page3Key = GlobalKey<ScaffoldState>();

  //* page 4 key
  final GlobalKey<ScaffoldState> page4Key = GlobalKey<ScaffoldState>();

  //* final page key
  final GlobalKey<ScaffoldState> pageFinalKey = GlobalKey<ScaffoldState>();
}
