import 'package:bloc_tutorial/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_tutorial/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocConsumer<InternetBloc, InternetState>(
        listener: (context, state) {
          if (state is InternetGainedState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Internet Connected "),
              backgroundColor: Colors.green,
            ));
          } else if (state is InternetLostState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Internet Lost"),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          // what is diff btw  == and is
          // == use to check value
          // is used to check datatype
          if (state is InternetGainedState) {
            return Text('Connected');
          } else if (state is InternetLostState) {
            return Text('Lost Internet');
          } else {
            return Text('Loading...');
          }
        },
      )

          //   child: BlocBuilder<InternetBloc, InternetState>(
          //   builder: (context, state) {
          //     // what is diff btw  == and is
          //     // == use to check value
          //     // is used to check datatype

          //     if (state is InternetGainedState) {
          //       return Text('Connected');
          //     } else if (state is InternetLostState) {
          //       return Text('Lost Internet');
          //     } else {
          //       return Text('Loading...');
          //     }
          //   },
          // ),
          ),
    );
  }
}

// flutter pub add flutter bloc
// add connetivity


// bloc builder used to show ui 
// bloc listner used to background task -> we can show dailog , navigator push etc..
// bloc consumer is mixer of builder and listner 


