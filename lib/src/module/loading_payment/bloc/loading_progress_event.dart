part of 'loading_progress_bloc.dart';

@immutable
abstract class LoadingProgressEvent {}

class LoadingEvent extends LoadingProgressEvent {
  LoadingType? loadingType;
  LoadingControlState? loadingControlState;

  LoadingEvent(this.loadingType, this.loadingControlState);
}