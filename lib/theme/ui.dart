import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkTheme =Theme.of(context).brightness ==Brightness.dark;

    return Scaffold(
      appBar: AppBar(
      backgroundColor: isDarkTheme ? Colors.black: Colors.white,
        centerTitle: true,
        title: const Text(
          'Homepage',
          style: TextStyle(),
        ),
      ),

      backgroundColor: isDarkTheme ? Colors.black: Colors.white,
      body: Center(
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            final isDarkTheme = state is DarkThemeState;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Light color',
                style :TextStyle(
                        color: isDarkTheme ? Colors.white: Colors.black,

                )),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<ThemeCubit>().toggleTheme();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, 
                    foregroundColor: Colors.white, 
                  ),
                  child: const Text('Change Theme Mode'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
