import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:taller_flutter_ccd2020/ui/pages/result_page.dart';
import 'package:taller_flutter_ccd2020/ui/widgets/loading_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000)
    ));

    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemIndigo
      ),
      title: 'Camera App',
      home: ResultPage(),
    );
  }
}

//Colors.white
