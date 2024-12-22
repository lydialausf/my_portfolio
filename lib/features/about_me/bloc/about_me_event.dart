part of 'about_me_bloc.dart';

abstract class AboutMeEvent  extends Equatable {
  const AboutMeEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_about_me_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomAboutMeEvent extends AboutMeEvent {
  /// {@macro custom_about_me_event}
  const CustomAboutMeEvent();
}
