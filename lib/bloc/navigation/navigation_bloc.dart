import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigationEvent>((event, emit) {
      if (event is NavigationInitialEvent) {
        emit(NavigationInitial());
      } else if (event is NavigationProfilesEvent) {
        emit(NavigationProfiles());
      } else {
        emit(NavigationSettings());
      }
    });
  }
}
