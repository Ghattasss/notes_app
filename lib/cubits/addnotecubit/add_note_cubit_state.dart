part of 'add_note_cubit_cubit.dart';

abstract class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoading extends AddNoteCubitState {}

final class AddNoteCubitLoaded extends AddNoteCubitState {}

final class AddNoteCubitError extends AddNoteCubitState {
  final String errorMessage;
  AddNoteCubitError(this.errorMessage);
}
