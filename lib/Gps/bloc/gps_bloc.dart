import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twosensor/Gps/bloc/gps_event.dart';
import 'package:twosensor/Gps/bloc/gps_state.dart';

class GpsBloc extends Bloc<GpsEvent, GpsState>{
  GpsBloc(super.initialState);

}