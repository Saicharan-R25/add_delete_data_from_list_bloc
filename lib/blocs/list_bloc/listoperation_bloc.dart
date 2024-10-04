import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'listoperation_event.dart';
part 'listoperation_state.dart';

class ListoperationBloc extends Bloc<ListoperationEvent, ListoperationState> {
  ListoperationBloc() : super(ListoperationInitial()) {
    on<ListoperationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
