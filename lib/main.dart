import 'package:demo/Screen/home_screen.dart';
import 'package:demo/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: const HomeScreen(),
        );
      },
      create: (context) => ThemeProvider(),
      // child: MaterialApp(
      //   theme: provider.theme,
      //   home:HomeScreen(),
      // ),
    );
  }
}
