// ignore: file_names
import 'package:flutter/material.dart';

class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode CurrentFocus = FocusScope.of(context);
    if(!CurrentFocus.hasPrimaryFocus){
      CurrentFocus.unfocus();
    }
  }
}


