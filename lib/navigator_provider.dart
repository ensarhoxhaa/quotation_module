import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/routes.dart';

class NavigatorProvider extends ChangeNotifier {
  List<MaterialPage> backstack = [quotationOverviewScreen]; // current stack

  bool pop() {
    if (backstack != [quotationOverviewScreen]) {
      // var tempStack = backstack.removeLast();
      _setStack([...backstack..removeLast()]);
    }
    return backstack.length == 1;
  }

  void _setStack(List<MaterialPage> stack) {
    if (stack != backstack) {
      backstack = stack;
      notifyListeners();
    }
  }

  void goToPageAndRemoveAll(MaterialPage page) {
    _setStack([page]);
  }

  void goToPage(MaterialPage page) {
    if (!backstack.contains(page)) {
      _setStack([...backstack, page]);
    }
  }

  void goToImageScreen(String bytes) {
    if (!backstack.contains(imageViewScreen(bytes))) {
      _setStack([...backstack, imageViewScreen(bytes)]);
    }
  }
}

final navigatorProvider = ChangeNotifierProvider<NavigatorProvider>((ref) {
  return NavigatorProvider();
});