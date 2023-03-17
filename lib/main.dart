import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/screens/quotation_overview_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
          onPopPage: (route, result) {
            route.didPop(result);
            return ref.watch(navigatorProvider).pop();
          },
          pages: ref.watch(navigatorProvider).backstack),
    );
  }
}
