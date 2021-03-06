import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'dart:html' as html;

class HandCursor extends MouseRegion {
  static final appContainer =
      html.window.document.getElementById('app-container');
  HandCursor({Widget child})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: child,
        );
}
