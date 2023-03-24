import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Providers/theme_provider.dart';

import 'Screen/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            theme: provider.isDark
                ? ThemeData(brightness: Brightness.dark)
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.green,
                    primarySwatch: Colors.green,
                  ),
            home: const HomeScreen(),
          );
        },
      ),
    ),
  );
}
