import 'package:bloc_pract/bloc_app1/page_home/bloc/saran_bloc.dart';
import 'package:bloc_pract/bloc_app1/page_home/page_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PageHomeWrapperProvider(),
    );
  }
}

class PageHomeWrapperProvider extends StatelessWidget {
  const PageHomeWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaranBloc(),
      child: PageHome(),
    );
  }
}
