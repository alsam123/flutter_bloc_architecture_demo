import 'package:block_demo/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  CounterBloc counterBloc;
  @override
  void initState() {
    super.initState();
    counterBloc = BlocProvider.of<CounterBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterInitial) {
            return buildInitalUi();
          } else if (state is AddedState) {
            return incrementUI(state.value);
          } else if (state is SubtractedState) {
            return decrementUI(state.value);
          } 
        },
      ),
    );
  }

  Widget buildInitalUi() {
    return Center(child:Column(children:[Spacer(flex:2),Text("Counter 0"),Row(children: [
      Spacer(flex:2),
      FlatButton(
        color: Colors.blue,
        child: Text("Increment"),
        onPressed: () {
          counterBloc.add(AddButtonClickedEvent());
        },
      ),
       Spacer(flex:1),
      FlatButton(
        color: Colors.blue,
        child: Text("Decrement"),
        onPressed: () {
          counterBloc.add(SubtractButtonClickedEvent());
        },
      ),
      Spacer(flex:2)

    ],),Spacer(flex:2),])
       
    );
  }

  Widget incrementUI(int data) {
    return Center(child:Column(children:[Spacer(flex:2),Text(data.toString()),Row(children: [
      Spacer(flex:2),
      FlatButton(
        color: Colors.blue,
        child: Text("Increment"),
        onPressed: () {
          counterBloc.add(AddButtonClickedEvent());
        },
      ),
       Spacer(flex:1),
      FlatButton(
        color: Colors.blue,
        child: Text("Decrement"),
        onPressed: () {
          counterBloc.add(SubtractButtonClickedEvent());
        },
      ),
      Spacer(flex:2)

    ],),Spacer(flex:2),])
       
    );
  }

   Widget decrementUI(int data) {
    return Center(child:Column(children:[Spacer(flex:2),Text(data.toString()),Row(children: [
      Spacer(flex:2),
      FlatButton(
        color: Colors.blue,
        child: Text("Increment"),
        onPressed: () {
          counterBloc.add(AddButtonClickedEvent());
        },
      ),
       Spacer(flex:1),
      FlatButton(
        color: Colors.blue,
        child: Text("Decrement"),
        onPressed: () {
          counterBloc.add(SubtractButtonClickedEvent());
        },
      ),
      Spacer(flex:2)

    ],),Spacer(flex:2),])
       
    );
  }



  
 

}