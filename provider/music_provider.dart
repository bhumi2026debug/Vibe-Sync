import 'package:flutter/material.dart';

class MusicProvider extends ChangeNotifier {
  bool isPlaying = false;

  void toggleMusic() {
    isPlaying = !isPlaying;
    notifyListeners();
  }
}
