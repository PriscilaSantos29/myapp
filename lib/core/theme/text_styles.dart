import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

//Classe Estática para armazenar os estilos de texto do aplicativo
class TextStyles {
  // Estilo para títulos grandes
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: AppColors.secondary,
  );

  // Estilo para títulos médios
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: AppColors.secondary,
  );

  // Estilo para textos comuns
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 48,
    fontFamily: 'Montserrat',
    color: AppColors.textPrimary,
  );

  // Estilo para títulos no AppBar
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: AppColors.background,
  );

  // Estilo para botões
  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    color: AppColors.background,
  );

  // Estilo para textos de erro
  static const TextStyle error = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: AppColors.error,
  );

  // Estilo para textos com fonte Rubik Bubbles (definida manualmente no projeto)
  static const TextStyle fontManual = TextStyle(
    fontFamily: 'RubikBubbles',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get googleFonts => GoogleFonts.roboto(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

}