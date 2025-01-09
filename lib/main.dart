import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/user_cubit.dart';

import 'package:flutter_application_1/cubitpage/first_page.dart';
import 'package:flutter_application_1/custom_theme/apptheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) =>UserCubit(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Apptheme.lightTheme,
        darkTheme: Apptheme.darkTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
// home:FirstCard(message: "message", icon:CupertinoIcons.add_circled)    );
        home: FirstPage());
  }
}
