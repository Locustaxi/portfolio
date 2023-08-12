import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/constants/themes.dart';
import 'package:portfolio/src/features/main/presentation/main_section.dart';
import 'package:portfolio/src/features/main/provider/dark_mode_controller.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: "Aladdine Abdou",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(darkModeProvider) ? ThemeMode.dark : ThemeMode.light,
      home: const MainSection(),
    );
  }
}
