import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'about_me_event.dart';
part 'about_me_state.dart';

class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc() : super(const AboutMeInitial()) {
    on<CustomAboutMeEvent>(_onCustomAboutMeEvent);
  }

  FutureOr<void> _onCustomAboutMeEvent(
    CustomAboutMeEvent event,
    Emitter<AboutMeState> emit,
  ) {
    // TODO: Add Logic
  }
}
