import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sticker_event.dart';
part 'sticker_state.dart';

class StickerBloc extends Bloc<StickerEvent, StickerState> {
  @override
  StickerState get initialState => StickerInitial();
  @override
  Stream<StickerState> mapEventToState(
    StickerEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
