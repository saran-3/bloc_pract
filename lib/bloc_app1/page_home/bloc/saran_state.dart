part of 'saran_bloc.dart';

@immutable
sealed class SaranState {}

final class SaranInitial extends SaranState {}
final class SaranLoading extends SaranState {}
final class SaranLoaded extends SaranState {}
final class SaranError extends SaranState {}
final class SayWishesState extends SaranState {}
final class SayWelcomeState extends SaranState {}


