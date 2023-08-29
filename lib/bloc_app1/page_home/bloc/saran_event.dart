part of 'saran_bloc.dart';

@immutable
sealed class SaranEvent {}

class FloatingActionButtonPressed extends SaranEvent{}
class SayWishesEvent extends SaranEvent{}
class SayWelcomeEvent extends SaranEvent{}

