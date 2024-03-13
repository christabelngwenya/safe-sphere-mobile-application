import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.black12),
      borderRadius: BorderRadius.circular(14),
    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.red),
      borderRadius: BorderRadius.circular(14),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.orange),
      borderRadius: BorderRadius.circular(14),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.white12),
      borderRadius: BorderRadius.circular(14),
    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.red),
      borderRadius: BorderRadius.circular(14),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: Colors.orange),
      borderRadius: BorderRadius.circular(14),
    ),
  );
}