import 'package:flutter/cupertino.dart';

class LoadingController {
  static final instance = LoadingController._();

  LoadingController._();

  ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);
  ValueNotifier<String> _text = ValueNotifier<String>('');

  get isLoading => _isLoading;

  get text => _text;

  void loading() {
    _isLoading.value = true;
  }

  void close() {
    _isLoading.value = false;
  }

  void changeText(String text) {
    _text.value = text;
  }

  void cleanText() {
    _text.value = "";
  }
}
