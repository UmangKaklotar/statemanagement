import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Providers/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return Center(
            child: Text("${provider.count}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        tooltip: "Increment",
        onPressed: () => HomeProvider.homeProvider.updateCount(),
      ),
    );
  }
}
