import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'loading_progress_event.dart';
part 'loading_progress_state.dart';

class LoadingProgressBloc extends Bloc<LoadingProgressEvent, LoadingProgressState> {

  LoadingProgressBloc() : super(const LoadingProgressState()) {
    on<LoadingEvent>(_onLoadingActionChange);
  }

  void _onLoadingActionChange(LoadingEvent event, Emitter<LoadingProgressState> emit) {
    emit(state.copyWith(loadingControlState: event.loadingControlState, loadingType: event.loadingType ));
  }
}
