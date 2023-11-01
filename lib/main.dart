import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/login_page.dart';
import 'package:story_stock/view/theme/dark_mode.dart';
import 'package:story_stock/view/theme/light_mode.dart';


void main() {
  runApp(const StoryStock());
}

class StoryStock extends StatelessWidget {
  const StoryStock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lighMode,
      darkTheme: darkMode,
    );
  }
}