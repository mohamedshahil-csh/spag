import 'package:flutter/material.dart';
import 'package:villagefresh/utils/theme/custom_themes/appbar_theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/bottom_theme_sheet.dart';
import 'package:villagefresh/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/chip_theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/text.theme.dart';
import 'package:villagefresh/utils/theme/custom_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: AppCheckBox.lightCheckBoxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    checkboxTheme: AppCheckBox.darkCheckBoxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkbottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
