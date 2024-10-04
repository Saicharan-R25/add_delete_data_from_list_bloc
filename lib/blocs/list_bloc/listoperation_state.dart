part of 'listoperation_bloc.dart';

@immutable
class ListoperationState extends Equatable{
  final List<Tasks> tasks;


  ListoperationState({
    this.tasks=const [],
  });

  ListoperationState copyWith({List<Tasks>? tasks}) {
    return ListoperationState(
      tasks: tasks ?? this.tasks,
    );
  }

  @override
  List<Object?> get props => [tasks];
}

final class ListoperationInitial extends ListoperationState {}

