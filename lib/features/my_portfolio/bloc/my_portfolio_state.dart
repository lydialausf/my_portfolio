part of 'my_portfolio_bloc.dart';

/// {@template my_portfolio_state}
/// MyPortfolioState description
/// {@endtemplate}
class MyPortfolioState extends Equatable {
  /// {@macro my_portfolio_state}
  const MyPortfolioState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current MyPortfolioState with property changes
  MyPortfolioState copyWith({
    String? customProperty,
  }) {
    return MyPortfolioState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template my_portfolio_initial}
/// The initial state of MyPortfolioState
/// {@endtemplate}
class MyPortfolioInitial extends MyPortfolioState {
  /// {@macro my_portfolio_initial}
  const MyPortfolioInitial() : super();
}
