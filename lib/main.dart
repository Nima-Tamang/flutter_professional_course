import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/cubit/auth_cubit.dart';
import 'package:flutter_application_1/cubit/post_form_data_cubit.dart';
import 'package:flutter_application_1/cubit/theme_cubit.dart';
import 'package:flutter_application_1/cubit/user_cubit.dart';
import 'package:flutter_application_1/custom_theme/apptheme.dart';
import 'package:flutter_application_1/login/Logins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()  {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(),
        ),
        BlocProvider(
          create: (context) => PostFormDataCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
                context.read<ThemeCubit>().loadTheme();

    return BlocSelector<ThemeCubit, ThemeState, bool>(
      selector: (state) {
        if (state is DarkThemeState) {
          return true;
        }
        return false;
      },
      builder: (context, isDarkTheme) {

        return MaterialApp(
          theme: Apptheme.lightTheme,
          darkTheme: Apptheme.darkTheme,
          // themeMode: ThemeMode.dark,
          // themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const Logins(),
        );
      },
    );
  }
}
