import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik/config/app_theme.dart';
import 'package:tok_tik/presentation/providers/discover_provider.dart';
import 'package:tok_tik/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return DiscoverProvider()..loadNextPage();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme().theme,
        debugShowCheckedModeBanner: false,
        home: const DiscoverScreen(),
      ),
    );
  }
}
