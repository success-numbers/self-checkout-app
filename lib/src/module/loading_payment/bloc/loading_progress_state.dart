part of 'loading_progress_bloc.dart';

enum LoadingType { progressLoader, basic, print, email }

enum LoadingControlState { initial, inprogress, complete, done }

class LoadingProgressState {
  final LoadingType loadingType;
  final LoadingControlState loadingControlState;

  const LoadingProgressState(
      {this.loadingType = LoadingType.basic,
      this.loadingControlState = LoadingControlState.initial});

  LoadingProgressState copyWith(
      {LoadingType? loadingType, LoadingControlState? loadingControlState}) {
    return LoadingProgressState(
        loadingType: loadingType ?? this.loadingType,
        loadingControlState: loadingControlState ?? this.loadingControlState);
  }

  @override
  List<Object?> get props => [loadingType, loadingControlState];

}
