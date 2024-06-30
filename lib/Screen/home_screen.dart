import 'package:demo/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 100,
          child: ElevatedButton(
            
            onPressed: () {
              provider.toggleTheme();
            },
            child: const Center(
              child: Text("Change Theme"),
            ),
          ),
        ),
      ),
    );
  }
}
