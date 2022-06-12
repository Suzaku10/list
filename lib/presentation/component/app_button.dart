import 'package:flutter/material.dart';

import '../../domain/core/app/app_style.dart';

class AppButton {
  AppButton._();

  static normal(
    String text, {
    required void Function()? onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 32, vertical: 4))),
      child: Text(
        text,
        style: AppStyle.bold14,
      ),
    );
  }
}
