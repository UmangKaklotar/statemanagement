import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        actions: [
          IconButton(
            icon: Icon(themeProvider.isDark ? Icons.light : Icons.dark_mode),
            onPressed: () {
              print("${themeProvider.isDark}");
              themeProvider.isDark = !themeProvider.isDark;
            },
          )
        ],
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return Center(
            child: Text("${provider.isDark}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Increment",
        onPressed: () {
          themeProvider.isDark = !themeProvider.isDark;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
