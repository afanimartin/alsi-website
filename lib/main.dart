import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ALSI/app_bar/app_bar_cubit.dart';
import 'package:ALSI/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BlocProvider<AppBarCubit>(
    create: (_) => AppBarCubit(),
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'ALSI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.white,
            textTheme:
                GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
            iconTheme: const IconThemeData(color: Color(0xFF25294E)),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: const Color(0xFF25294E)),
        home: const HomeScreen(),
      );
}
