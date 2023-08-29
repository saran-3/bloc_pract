
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'saran_event.dart';
part 'saran_state.dart';

class SaranBloc extends Bloc<SaranEvent, SaranState> {
  SaranBloc() : super(SaranInitial()) {
     on<FloatingActionButtonPressed>((event, emit) async {
     
      emit(SaranLoading());

    await  Future.delayed(const Duration(seconds: 3));
    emit(SaranLoaded());
    });

    on<SayWishesEvent>((event, emit) => emit(SayWishesState()));
    on<SayWelcomeEvent>((event, emit) => emit(SayWelcomeState()));
    
  }
  }

