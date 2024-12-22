import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'my_portfolio_event.dart';
part 'my_portfolio_state.dart';

class MyPortfolioBloc extends Bloc<MyPortfolioEvent, MyPortfolioState> {
  MyPortfolioBloc() : super(const MyPortfolioInitial()) {
    on<CustomMyPortfolioEvent>(_onCustomMyPortfolioEvent);
  }

  FutureOr<void> _onCustomMyPortfolioEvent(
    CustomMyPortfolioEvent event,
    Emitter<MyPortfolioState> emit,
  ) {
    // TODO: Add Logic
  }
}
