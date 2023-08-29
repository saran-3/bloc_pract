import 'package:bloc_pract/bloc_app1/page_home/bloc/saran_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLoadedState extends StatelessWidget {
  const HomeLoadedState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("This is Loaded State"),
          TextButton(
            onPressed: () {
              BlocProvider.of<SaranBloc>(context).add(
                SayWishesEvent(),
              );
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}
