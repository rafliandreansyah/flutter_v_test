part of 'navigation_bloc.dart';

sealed class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigationInitialEvent extends NavigationEvent {}

class NavigationProfilesEvent extends NavigationEvent {}

class NavigationSettingsEvent extends NavigationEvent {}
