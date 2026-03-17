
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state/app_state.dart';
import 'screens/home.dart';

void main() {
  runApp(const StudTimeApp());
}

class StudTimeApp extends StatelessWidget {
  const StudTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState()..init(),
      child: Consumer<AppState>(
        builder: (context, app, _) {
          final theme = ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0284C7)),
            brightness: app.highContrast ? Brightness.dark : Brightness.light,
            textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: app.fontScale,
            ),
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Stud'Time",
            theme: theme,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
