import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_bloc/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cart");
              },
              icon: Icon(Icons.shopping_cart_checkout))
        ],
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
                .add(CounterBlocEventIncrease());
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
