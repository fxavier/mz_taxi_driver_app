import 'package:flutter/material.dart';
import 'package:mz_taxi_driver_app/screens/screens.dart';

void main() {
  runApp(
    MyApp(
      child: MaterialApp(
        title: 'Drivers App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MySplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;
  MyApp({
    this.child,
  });

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState() {
      key = UniqueKey();
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}