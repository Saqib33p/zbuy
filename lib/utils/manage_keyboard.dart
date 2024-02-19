import 'package:flutter/material.dart';

class KeyboardUtil {
  static void hidekeyboard(BuildContext context) {
    FocusNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
