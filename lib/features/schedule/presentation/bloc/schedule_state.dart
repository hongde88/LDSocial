part of 'schedule_bloc.dart';

abstract class ScheduleState extends Equatable {
  const ScheduleState();
}

class ScheduleInitial extends ScheduleState {
  @override
  List<Object> get props => [];
}
