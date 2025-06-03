import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:projectimagefirb/core/games/data/games_repo.dart';
import 'package:projectimagefirb/core/games/models/data_model.dart';

part 'games_data_event.dart';
part 'games_data_state.dart';

class GamesDataBloc extends Bloc<GamesDataEvent, GamesDataState> {
  final GamesRepo gamesRepo;
  GamesDataBloc(this.gamesRepo) : super(GamesDataInitialState()) {
    on<GamesDataEvent>((event, emit) async {
      if (event is LoadGamesDataEvent) {
        emit(GamesDataInitialState());
        List<DataModel>? apiResult = await gamesRepo.getGamesDate();
        if (apiResult == null) {
          emit(GamesDataErrorState());
        } else {
          emit(GamesDataLoadedState(apiResult: apiResult));
        }
      }
    });
  }
}
