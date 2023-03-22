import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Providers/home_provider.dart';

import 'Screen/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HomeProvider>(
      create: (_) => HomeProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}