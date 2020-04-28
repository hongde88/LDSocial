import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  @override
  ScheduleState get initialState => ScheduleInitial();
  @override
  Stream<ScheduleState> mapEventToState(
    ScheduleEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
