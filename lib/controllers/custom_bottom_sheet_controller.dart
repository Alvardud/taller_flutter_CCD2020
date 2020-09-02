import 'package:flutter/cupertino.dart';

class CustomBottomSheetController extends ChangeNotifier {
  final TickerProvider vsync;
  final AnimationController _animationController;

  BottomSheetStatus state = BottomSheetStatus.close;

  CustomBottomSheetController({this.vsync})
      : _animationController = AnimationController(vsync: vsync) {
    _animationController
      ..duration = Duration(milliseconds: 150)
      ..addListener(() {
        notifyListeners();
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            state = BottomSheetStatus.opening;
            break;
          case AnimationStatus.reverse:
            state = BottomSheetStatus.closing;
            break;
          case AnimationStatus.completed:
            state = BottomSheetStatus.open;
            break;
          case AnimationStatus.dismissed:
            state = BottomSheetStatus.close;
            break;
        }
        notifyListeners();
      });
  }

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

  get value => _animationController.value;

  void open() {
    _animationController.forward();
  }

  void close() {
    _animationController.reverse();
  }

  void toggle() {
    if (state == BottomSheetStatus.open) {
      close();
    } else {
      open();
    }
  }
}

enum BottomSheetStatus { close, open, opening, closing }
