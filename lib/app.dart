import 'package:c_clark_workshop/routes/app_router.dart';
import 'package:c_clark_workshop/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/constants/constants.dart';
import 'core/theme/theme.dart';
import 'providers/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: themeProvider.themeMode,
          initialRoute: AppRoutes.initial,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
