import 'package:flutter/cupertino.dart';

class CameraControllerState{

  static final CameraControllerState instance= CameraControllerState._();
  CameraControllerState._();

  ValueNotifier<bool> cameraActive = ValueNotifier<bool>(true);

  void pauseCamera(){
    cameraActive.value=false;
  }

  void activeCamera(){
    cameraActive.value=true;
  }
}