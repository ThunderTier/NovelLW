import 'package:flutter/material.dart';
import 'package:novel_lw/novel/presentation/screens/screens.dart';

class AppNovel extends StatelessWidget {
  const AppNovel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Novel L/W",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MainScreen(),
    );
  }
}
