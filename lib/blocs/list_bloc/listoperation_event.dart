part of 'listoperation_bloc.dart';

@immutable
sealed class ListoperationEvent {}

class AddTask extends ListoperationEvent{
  final String title;
  final String description;
  final bool isDone=false;

  AddTask({
    required this.title,
    required this.description,
  });
}
class RemoveTask extends ListoperationEvent{

  final Tasks t1;
  RemoveTask({
    required this.t1,
});
}
