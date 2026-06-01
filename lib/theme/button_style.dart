import 'package:flutter/material.dart';

ButtonStyle buttonStyle(Color color) {
  return ElevatedButton.styleFrom(
    animationDuration: Duration.zero,
    backgroundColor: color,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}
