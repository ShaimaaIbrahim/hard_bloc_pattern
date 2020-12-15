
class CounterState{

  int counter;

  CounterState({this.counter});

  CounterState._();

   factory CounterState.initial(){
    return CounterState._()..counter =0 ;
  }


}