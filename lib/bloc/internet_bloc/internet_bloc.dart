import 'dart:async';

import 'package:bloc_tutorial/bloc/internet_bloc/internet_event.dart';
import 'package:bloc_tutorial/bloc/internet_bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {

  StreamSubscription? connectivityStream; // to stop connectivity in background


  InternetBloc(): super( InternetInitialState()) // we have to give initial state in constructor
  {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetGainedEvet>((event, emit) => emit(InternetGainedState()));


    Connectivity _connectivity = Connectivity();
    connectivityStream = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetGainedEvet());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    connectivityStream?.cancel();
    return super.close();
  }
}
