part of 'my_portfolio_bloc.dart';

abstract class MyPortfolioEvent  extends Equatable {
  const MyPortfolioEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_my_portfolio_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomMyPortfolioEvent extends MyPortfolioEvent {
  /// {@macro custom_my_portfolio_event}
  const CustomMyPortfolioEvent();
}
