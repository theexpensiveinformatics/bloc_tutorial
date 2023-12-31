import 'package:bloc_tutorial/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_tutorial/cubits/internet_cubit.dart';
import 'package:bloc_tutorial/home_screen.dart';
import 'package:bloc_tutorial/home_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => InternetBloc(),
  //     child: MaterialApp(  
  //       debugShowCheckedModeBanner: false,
  //       home: HomeScreen(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreenCubit(),
      ),
    );
  }
}
