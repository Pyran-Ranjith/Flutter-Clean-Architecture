import 'package:flutter/material.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/secrets/app_secrets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/theme/theme.dart';
import 'features/auth/presentation/pages/login_page.dart';
// import 'features/auth/presentation/pages/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LogInPage(),
    );
  }
}
