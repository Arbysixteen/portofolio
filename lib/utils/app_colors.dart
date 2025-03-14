import 'package:flutter/material.dart';

class AppColors {
  // Primary color scheme
  static const Color primaryPurple = Color(0xFF8A56AC);
  static const Color primaryBlue = Color(0xFF5468FF);
  static const Color primaryRed = Color(0xFFFF4B4B);

  // Neutral colors
  static const Color background = Color(0xFFF5F5F5);
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF666666);

  // Gradient colors
  static const LinearGradient purpleGradient = LinearGradient(
    colors: [Color(0xFF8A56AC), Color(0xFFBD8BE0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}