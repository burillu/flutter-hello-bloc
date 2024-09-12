import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_bloc/app.dart';
import 'package:hello_bloc/bloc/counter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => CounterBloc(),
      ),
    ],
    child: App(),
  ));
}
