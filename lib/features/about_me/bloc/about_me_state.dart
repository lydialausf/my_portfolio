part of 'about_me_bloc.dart';

/// {@template about_me_state}
/// AboutMeState description
/// {@endtemplate}
class AboutMeState extends Equatable {
  /// {@macro about_me_state}
  const AboutMeState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current AboutMeState with property changes
  AboutMeState copyWith({
    String? customProperty,
  }) {
    return AboutMeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template about_me_initial}
/// The initial state of AboutMeState
/// {@endtemplate}
class AboutMeInitial extends AboutMeState {
  /// {@macro about_me_initial}
  const AboutMeInitial() : super();
}
