import 'package:flutter/material.dart';
import 'package:my_first_app/providers/app_state.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 223, 220, 219)),
        ),
        title: "Namer App",
        home: const HomeScreen(),
      ),
    );
  }
}
