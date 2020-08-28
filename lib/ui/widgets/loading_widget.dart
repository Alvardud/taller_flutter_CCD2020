import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:taller_flutter_ccd2020/controllers/loading_controller.dart';

class LoadingWidget extends StatefulWidget {
  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 5.5, end: 0).animate(_controller);
    _animation.addListener(() {
      setState(() {});
    });
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0x00000000),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Color(0xff2C2C2E),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Point(height: 3 * (sin(1.6 * _animation.value))),
                        Point(height: 3 * (sin(2.1 * _animation.value))),
                        Point(height: 3 * (sin(2.4 * _animation.value))),
                      ],
                    ),
                  ),
                  Text(
                    'Cargando',
                    style:
                        TextStyle(color: CupertinoColors.white, fontSize: 20.0),
                  ),
                ],
              )),
              ValueListenableBuilder(
                valueListenable: LoadingController.instance.text,
                builder: (context, value, child) {
                  return Text(value,
                      style: TextStyle(
                          color: CupertinoColors.systemGrey, fontSize: 14));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class Point extends StatelessWidget {
  final double height;

  Point({this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: height + 8,
      width: height + 8,
      decoration: BoxDecoration(
          color: CupertinoTheme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
