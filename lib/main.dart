import 'package:flutter/material.dart';
import 'package:flutter_application_1/Consts/Text.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Supabase.initialize(url: TextNames().url, anonKey: TextNames().key);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',

      initialRoute: '/login',

      onGenerateRoute: AppRouter.generateRoute,

      theme: ThemeData(useMaterial3: true),
    );
  }
}
