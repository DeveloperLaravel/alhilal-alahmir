part of 'games_data_bloc.dart';

@immutable
abstract class GamesDataState {}

class GamesDataInitialState extends GamesDataState {}

class GamesDataLoadingState extends GamesDataState {}

class GamesDataLoadedState extends GamesDataState {
  final List<DataModel> apiResult;

  GamesDataLoadedState({required this.apiResult});
}

class GamesDataErrorState extends GamesDataState {}
