import 'package:bloc_pract/bloc_app1/page_home/bloc/saran_bloc.dart';
import 'package:bloc_pract/bloc_app1/page_home/widgets/home_initial_state.dart';
import 'package:bloc_pract/bloc_app1/page_home/widgets/home_loaded_state.dart';
import 'package:bloc_pract/bloc_app1/page_home/widgets/home_loading_state.dart';
import 'package:bloc_pract/bloc_app1/page_home/widgets/home_say_wishes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SaranBloc, SaranState>(
        builder: (context, state) {
          if (state is SaranInitial) {
            return const HomeInitialState();
          } else if (state is SaranLoading) {
            return const HomeLoadingState();
          } else if (state is SaranLoaded) {
            return const HomeLoadedState();
          } else if (state is SaranError) {
          } else if (state is SayWishesState) {
            return const HomeSayWishesState();
          }

          return const Center(child: Text('before bloc'));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<SaranBloc>(context).add(
          FloatingActionButtonPressed(),
        );
      }),
    );
  }
}
