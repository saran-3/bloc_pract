import 'package:bloc_pract/bloc_app1/page_home/bloc/saran_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeInitialState extends StatelessWidget {
  const HomeInitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This is Initial State"),
        TextButton(
          onPressed: () {
            BlocProvider.of<SaranBloc>(context).add(
              SayWelcomeEvent(),
            );
          },
          child: Text("Press to Welcome"),
        ),
      ],
    ));
  }
}
