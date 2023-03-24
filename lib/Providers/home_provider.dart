import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  // static HomeProvider homeProvider = HomeProvider();
  int count = 0;

  updateCount() {
    count++;
    print("Count : $count");
    notifyListeners();
  }
}
