import 'package:flutter/material.dart';
import 'package:recipes_app/utils/utils.dart';

class Borders {
  Borders._();

  static OutlineInputBorder defaultBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(Dimensions.radiusLarge),
    ),
  );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(8),
  );
}
