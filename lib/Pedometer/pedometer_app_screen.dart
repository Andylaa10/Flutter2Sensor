import 'package:flutter/material.dart';
import 'package:twosensor/Gps/gps_app_screen.dart';
import 'package:twosensor/Pedometer/bloc/pedometer_bloc.dart';
import 'package:twosensor/Pedometer/bloc/pedometer_event.dart';
import 'package:twosensor/Pedometer/bloc/pedometer_state.dart';

class PedometerApp extends StatefulWidget {
  const PedometerApp({Key? key}) : super(key: key);

  @override
  State<PedometerApp> createState() => _PedometerAppState();
}

class _PedometerAppState extends State<PedometerApp> {
  String _status = 'stopped';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PedometerBloc _bloc = PedometerBloc();
    return StreamBuilder<PedometerState>(
        stream: _bloc.stepsStream,
        builder: (context, snapshot) {
          return Container(
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _bloc.stepOnChange(StepCount());
                        setState(() {
                          _status = 'walking';
                        });
                      },
                      icon: const Icon(Icons.play_arrow)),
                  const Text(
                    'Steps taken:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    _toString(snapshot.data?.steps),
                    style: TextStyle(fontSize: 40, color: Colors.red[600]),
                  ),
                  Divider(
                    height: 100,
                    thickness: 0,
                    color: Theme.of(context).primaryColor,
                  ),
                  const Text(
                    'Pedestrian status:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Center(
                    child: Text(
                      _status,
                      style: TextStyle(fontSize: 40, color: Colors.red[600])
                    ),
                  ),
                  Icon(
                    _status == 'walking' ? Icons.directions_walk : Icons.accessible,
                    color: Colors.red[600],
                    size: 60,
                  ),
                  Divider(
                    height: 100,
                    thickness: 0,
                    color: Theme.of(context).primaryColor,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'View My Distance',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.map,
                          ),
                          iconSize: 60,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GpsApp()));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  String _toString(int? steps) {
    String val = '';
    if(steps == null) {
      val = '0';
    }else{
      val = steps.toString();
    }
    return val;
  }
}
