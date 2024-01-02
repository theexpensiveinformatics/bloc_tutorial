// -- what is diff btw bloc and cubit ?
// -> bloc take event give state  || cubit take fuctions give states
// -> in bloc one event emit one state || in cubit one fuction call state more than one time

// enum used for when
import 'package:bloc_tutorial/cubits/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends StatefulWidget {
  const HomeScreenCubit({super.key});

  @override
  State<HomeScreenCubit> createState() => _HomeScreenCubitState();
}

class _HomeScreenCubitState extends State<HomeScreenCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state == InternetState.Gained) {
              return Text('Internet Connected !');
            } else if (state == InternetState.Lost) {
              return Text('Internet Lost');
            } else {
              return Text('Loading');
            }
          },
        ),
      ),
    );
  }
}
