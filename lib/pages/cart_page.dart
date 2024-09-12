import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_bloc/bloc/counter_bloc.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello BLoC"),
        centerTitle: true,
      ),
      body: body(),
    );
  }

  Widget body() {
    return Center(
      child:
          BlocBuilder<CounterBloc, CounterBlocState>(builder: (context, state) {
        return TextButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context)
                .add(CounterBlocEventDecrease());
          },
          child: Text(
            (state as CounterBlocStateValue).value.toString(),
            style: TextStyle(
                fontSize: 100, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        );
      }),
    );
  }
}
