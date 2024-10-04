import 'package:add_delete_data_from_list_bloc/models/tasks.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'listoperation_event.dart';
part 'listoperation_state.dart';

class ListoperationBloc extends Bloc<ListoperationEvent, ListoperationState> {
  final List<Tasks> Bloc_tasks=[];
  ListoperationBloc() : super(ListoperationInitial()) {
    on<AddTask>((event, emit) {
      Tasks t1 = Tasks(title: event.title,description: event.description,isDone: event.isDone);
      Bloc_tasks.add(t1);
      emit(state.copyWith(tasks: Bloc_tasks));
    });
  }
}
