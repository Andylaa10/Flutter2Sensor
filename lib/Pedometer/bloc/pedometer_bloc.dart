import 'dart:async';

import 'package:twosensor/Pedometer/bloc/pedometer_event.dart';
import 'package:twosensor/Pedometer/bloc/pedometer_state.dart';

class PedometerBloc{
  PedometerBloc();
  var steps = 0;

  Stream<PedometerState> get stepsStream => _controller.stream;

  final _controller = StreamController<PedometerState>();

  void stepOnChange(PedometerEvent event){
    if(event is StepCount){
      Timer.periodic(const Duration(seconds: 1), (t) {
        steps++;
        _controller.sink.add(PedometerState(steps));
      });
    }
  }

  void dispose(){
    _controller.close();
  }
}