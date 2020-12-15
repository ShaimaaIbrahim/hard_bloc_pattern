import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hard_bloc_pattern/counter_event.dart';
import 'package:hard_bloc_pattern/counter_state.dart';


class CounterBloc extends Bloc<CounterEvent , CounterState>{

  void onIncreament(){
    add(IncreamentEvent());
  }

  void onDecreament(){
    add(DecreamentEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async*{
     if(event is IncreamentEvent){
       yield CounterState(counter: state.counter+1);
     }else if(event is DecreamentEvent){
       yield CounterState(counter: state.counter-1);
     }
  }


}