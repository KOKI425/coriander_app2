
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String kboyText = 'KBOYさんじゃないよ';

  void changeKboyText(){
    kboyText = 'Kboyさんこんにちは!!!';
    notifyListeners();
  }
}