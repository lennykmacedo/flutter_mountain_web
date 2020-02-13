import 'package:flutter/material.dart';

getSize(BuildContext context) {
  var size = MediaQuery.of(context).size.width;

  if (size < 768) {
    return 'small';
  } else if (size < 992) {
    return 'medium';
  } else {
    return 'large';
  }
}
