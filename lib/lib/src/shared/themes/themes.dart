import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
        titleTextStyle: const TextStyle(
          fontSize: 24,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          _lightColorScheme.primary,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            _lightColorScheme.primary,
          ),
          foregroundColor: MaterialStateProperty.all(
            _lightColorScheme.onPrimary,
          ),
        ),
      ),
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: _darkColorScheme.primary,
        foregroundColor: _darkColorScheme.onPrimary,
        titleTextStyle: TextStyle(
          color: _darkColorScheme.onPrimary,
          fontSize: 24,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _darkColorScheme.primary,
        foregroundColor: _darkColorScheme.onPrimary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          _darkColorScheme.primary,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            _darkColorScheme.primary,
          ),
          foregroundColor: MaterialStateProperty.all(
            _darkColorScheme.onPrimary,
          ),
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: _darkColorScheme.onPrimaryContainer,
        ),
        titleMedium: TextStyle(
          color: _darkColorScheme.onPrimaryContainer,
        ),
        titleSmall: TextStyle(
          color: _darkColorScheme.onPrimaryContainer,
        ),
      ),
    );
